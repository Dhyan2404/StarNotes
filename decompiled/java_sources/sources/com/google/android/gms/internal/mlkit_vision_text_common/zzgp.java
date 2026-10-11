package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes5.dex */
final class zzgp implements ObjectEncoder {
    static final zzgp zza = new zzgp();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder(Constants.ATTRNAME_FORMAT);
        zzct zzctVar = new zzct();
        zzctVar.zza(1);
        builder.withProperty(zzctVar.zzb()).build();
    }

    private zzgp() {
    }

    @Override // com.sunia.HTREnginev2.gpf
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw null;
    }
}
