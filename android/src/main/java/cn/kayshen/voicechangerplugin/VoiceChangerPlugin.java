package cn.kayshen.voicechangerplugin;

import android.content.Context;

import cn.kayshen.voicechanger.VoiceUtil;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * VoiceChangerPlugin
 */
public class VoiceChangerPlugin implements MethodCallHandler {
    private static Context mContext;

    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "voice_changer_plugin/methods");
        channel.setMethodCallHandler(new VoiceChangerPlugin());
        mContext = registrar.activeContext();

    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {



        if (("change").equals(call.method)) {
            String _path = call.argument("path");
            int _type = call.argument("type");
            VoiceUtil.initSDK(mContext);
            VoiceUtil.fix(_path, _type);
            VoiceUtil.destorySDK();
        } else {
            result.notImplemented();
        }
    }
}
