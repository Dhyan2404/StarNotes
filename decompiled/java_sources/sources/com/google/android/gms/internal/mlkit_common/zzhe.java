package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes5.dex */
final class zzhe implements ObjectEncoder {
    static final zzhe zza = new zzhe();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder(AbstractLogger.REQUEST);
        zzay zzayVar = new zzay();
        zzayVar.zza(1);
        builder.withProperty(zzayVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
        zzay zzayVar2 = new zzay();
        zzayVar2.zza(2);
        builder2.withProperty(zzayVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("durationMs");
        zzay zzayVar3 = new zzay();
        zzayVar3.zza(3);
        builder3.withProperty(zzayVar3.zzb()).build();
    }

    private zzhe() {
    }

    @Override // com.sunia.HTREnginev2.gpf
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw null;
    }
}
