package com.google.mlkit.vision.text.bundled.common;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboc;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbom;
import com.sunia.HTREnginev2.ecp;

@KeepForSdk
@DynamiteApi
/* loaded from: classes6.dex */
public class BundledTextRecognizerCreator extends zboc {
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbod
    public ecp newTextRecognizer(IObjectWrapper iObjectWrapper) throws RemoteException {
        throw new RemoteException("Please use newTextRecognizerWithOptions instead.");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbod
    public ecp newTextRecognizerWithOptions(IObjectWrapper iObjectWrapper, zbom zbomVar) {
        return new ecp((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zbomVar.zba(), zbomVar.zbc(), zbomVar.zbb(), zbomVar.zbd());
    }
}
