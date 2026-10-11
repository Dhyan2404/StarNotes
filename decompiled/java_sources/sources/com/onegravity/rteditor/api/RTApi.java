package com.onegravity.rteditor.api;

import android.app.DialogFragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AndroidRuntimeException;
import android.widget.Toast;
import androidx.annotation.AttrRes;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMediaSource;
import com.onegravity.rteditor.api.media.RTVideo;

/* loaded from: classes7.dex */
public class RTApi implements RTProxy, RTMediaFactory<RTImage, RTAudio, RTVideo> {
    private static Context sAppContext = null;
    private static boolean sDarkTheme = false;
    private static final Object sTheLock = new Object();
    private static final long serialVersionUID = -3877685955074371741L;
    private final RTMediaFactory<RTImage, RTAudio, RTVideo> mMediaFactory;
    private final transient RTProxy mRTProxy;

    /* loaded from: classes7.dex */
    public static final class IncorrectInitializationException extends AndroidRuntimeException {
        private static final long serialVersionUID = 327389536289485672L;

        public IncorrectInitializationException(String str) {
            super(str);
        }
    }

    public RTApi(Context context, RTProxy rTProxy, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        synchronized (sTheLock) {
            sAppContext = context.getApplicationContext();
        }
        sDarkTheme = resolveBoolean(context, C7028R.attr.rte_darkTheme, false);
        this.mRTProxy = rTProxy;
        this.mMediaFactory = rTMediaFactory;
    }

    public static Context getApplicationContext() {
        Context context;
        synchronized (sTheLock) {
            context = sAppContext;
            if (context == null) {
                throw new IncorrectInitializationException("Create an RTApi object before calling RTApi.getApplicationContext()");
            }
        }
        return context;
    }

    private boolean resolveBoolean(Context context, @AttrRes int i, boolean z) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getBoolean(0, z);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static boolean useDarkTheme() {
        return sDarkTheme;
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTAudio createAudio(RTMediaSource rTMediaSource) {
        return this.mMediaFactory.createAudio(rTMediaSource);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTImage createImage(RTMediaSource rTMediaSource) {
        return this.mMediaFactory.createImage(rTMediaSource);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTVideo createVideo(RTMediaSource rTMediaSource) {
        return this.mMediaFactory.createVideo(rTMediaSource);
    }

    public RTMediaFactory<RTImage, RTAudio, RTVideo> getMediaFactory() {
        return this.mMediaFactory;
    }

    public RTProxy getRTProxy() {
        return this.mRTProxy;
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public Toast makeText(int i, int i2) {
        return this.mRTProxy.makeText(i, i2);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void openDialogFragment(String str, DialogFragment dialogFragment) {
        this.mRTProxy.openDialogFragment(str, dialogFragment);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void removeFragment(String str) {
        this.mRTProxy.removeFragment(str);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void runOnUiThread(Runnable runnable) {
        this.mRTProxy.runOnUiThread(runnable);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void startActivityForResult(Intent intent, int i) {
        this.mRTProxy.startActivityForResult(intent, i);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTAudio createAudio(String str) {
        return this.mMediaFactory.createAudio(str);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTImage createImage(String str) {
        return this.mMediaFactory.createImage(str);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTVideo createVideo(String str) {
        return this.mMediaFactory.createVideo(str);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public Toast makeText(CharSequence charSequence, int i) {
        return this.mRTProxy.makeText(charSequence, i);
    }
}
