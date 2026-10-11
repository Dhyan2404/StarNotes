package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class AutoProtoEncoderDoNotUseEncoder implements Configurator {
    public static final int CODEGEN_VERSION = 2;
    public static final Configurator CONFIG = new AutoProtoEncoderDoNotUseEncoder();

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$a */
    /* loaded from: classes4.dex */
    public static final class C4616a implements ObjectEncoder<ClientMetrics> {

        /* renamed from: a */
        public static final C4616a f21887a = new C4616a();

        /* renamed from: b */
        public static final FieldDescriptor f21888b = FieldDescriptor.builder("window").withProperty(AtProtobuf.builder().tag(1).build()).build();

        /* renamed from: c */
        public static final FieldDescriptor f21889c = FieldDescriptor.builder("logSourceMetrics").withProperty(AtProtobuf.builder().tag(2).build()).build();

        /* renamed from: d */
        public static final FieldDescriptor f21890d = FieldDescriptor.builder("globalMetrics").withProperty(AtProtobuf.builder().tag(3).build()).build();

        /* renamed from: e */
        public static final FieldDescriptor f21891e = FieldDescriptor.builder("appNamespace").withProperty(AtProtobuf.builder().tag(4).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(ClientMetrics clientMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21888b, clientMetrics.getWindowInternal());
            objectEncoderContext.add(f21889c, clientMetrics.getLogSourceMetricsList());
            objectEncoderContext.add(f21890d, clientMetrics.getGlobalMetricsInternal());
            objectEncoderContext.add(f21891e, clientMetrics.getAppNamespace());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$b */
    /* loaded from: classes4.dex */
    public static final class C4617b implements ObjectEncoder<GlobalMetrics> {

        /* renamed from: a */
        public static final C4617b f21892a = new C4617b();

        /* renamed from: b */
        public static final FieldDescriptor f21893b = FieldDescriptor.builder("storageMetrics").withProperty(AtProtobuf.builder().tag(1).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(GlobalMetrics globalMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21893b, globalMetrics.getStorageMetricsInternal());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$c */
    /* loaded from: classes4.dex */
    public static final class C4618c implements ObjectEncoder<LogEventDropped> {

        /* renamed from: a */
        public static final C4618c f21894a = new C4618c();

        /* renamed from: b */
        public static final FieldDescriptor f21895b = FieldDescriptor.builder("eventsDroppedCount").withProperty(AtProtobuf.builder().tag(1).build()).build();

        /* renamed from: c */
        public static final FieldDescriptor f21896c = FieldDescriptor.builder("reason").withProperty(AtProtobuf.builder().tag(3).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(LogEventDropped logEventDropped, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21895b, logEventDropped.getEventsDroppedCount());
            objectEncoderContext.add(f21896c, logEventDropped.getReason());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$d */
    /* loaded from: classes4.dex */
    public static final class C4619d implements ObjectEncoder<LogSourceMetrics> {

        /* renamed from: a */
        public static final C4619d f21897a = new C4619d();

        /* renamed from: b */
        public static final FieldDescriptor f21898b = FieldDescriptor.builder("logSource").withProperty(AtProtobuf.builder().tag(1).build()).build();

        /* renamed from: c */
        public static final FieldDescriptor f21899c = FieldDescriptor.builder("logEventDropped").withProperty(AtProtobuf.builder().tag(2).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(LogSourceMetrics logSourceMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21898b, logSourceMetrics.getLogSource());
            objectEncoderContext.add(f21899c, logSourceMetrics.getLogEventDroppedList());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$e */
    /* loaded from: classes4.dex */
    public static final class C4620e implements ObjectEncoder<ProtoEncoderDoNotUse> {

        /* renamed from: a */
        public static final C4620e f21900a = new C4620e();

        /* renamed from: b */
        public static final FieldDescriptor f21901b = FieldDescriptor.m28079of("clientMetrics");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(ProtoEncoderDoNotUse protoEncoderDoNotUse, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21901b, protoEncoderDoNotUse.getClientMetrics());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$f */
    /* loaded from: classes4.dex */
    public static final class C4621f implements ObjectEncoder<StorageMetrics> {

        /* renamed from: a */
        public static final C4621f f21902a = new C4621f();

        /* renamed from: b */
        public static final FieldDescriptor f21903b = FieldDescriptor.builder("currentCacheSizeBytes").withProperty(AtProtobuf.builder().tag(1).build()).build();

        /* renamed from: c */
        public static final FieldDescriptor f21904c = FieldDescriptor.builder("maxCacheSizeBytes").withProperty(AtProtobuf.builder().tag(2).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(StorageMetrics storageMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21903b, storageMetrics.getCurrentCacheSizeBytes());
            objectEncoderContext.add(f21904c, storageMetrics.getMaxCacheSizeBytes());
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$g */
    /* loaded from: classes4.dex */
    public static final class C4622g implements ObjectEncoder<TimeWindow> {

        /* renamed from: a */
        public static final C4622g f21905a = new C4622g();

        /* renamed from: b */
        public static final FieldDescriptor f21906b = FieldDescriptor.builder("startMs").withProperty(AtProtobuf.builder().tag(1).build()).build();

        /* renamed from: c */
        public static final FieldDescriptor f21907c = FieldDescriptor.builder("endMs").withProperty(AtProtobuf.builder().tag(2).build()).build();

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(TimeWindow timeWindow, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21906b, timeWindow.getStartMs());
            objectEncoderContext.add(f21907c, timeWindow.getEndMs());
        }
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(ProtoEncoderDoNotUse.class, C4620e.f21900a);
        encoderConfig.registerEncoder(ClientMetrics.class, C4616a.f21887a);
        encoderConfig.registerEncoder(TimeWindow.class, C4622g.f21905a);
        encoderConfig.registerEncoder(LogSourceMetrics.class, C4619d.f21897a);
        encoderConfig.registerEncoder(LogEventDropped.class, C4618c.f21894a);
        encoderConfig.registerEncoder(GlobalMetrics.class, C4617b.f21892a);
        encoderConfig.registerEncoder(StorageMetrics.class, C4621f.f21902a);
    }
}
