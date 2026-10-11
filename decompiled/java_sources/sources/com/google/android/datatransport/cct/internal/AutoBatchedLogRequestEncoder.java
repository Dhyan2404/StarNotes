package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.C14140nj;
import com.sunia.HTREnginev2.sod;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class AutoBatchedLogRequestEncoder implements Configurator {
    public static final int CODEGEN_VERSION = 2;
    public static final Configurator CONFIG = new AutoBatchedLogRequestEncoder();

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$a */
    /* loaded from: classes4.dex */
    public static final class C4605a implements ObjectEncoder<AndroidClientInfo> {

        /* renamed from: a */
        public static final C4605a f21789a = new C4605a();

        /* renamed from: b */
        public static final FieldDescriptor f21790b = FieldDescriptor.m28079of("sdkVersion");

        /* renamed from: c */
        public static final FieldDescriptor f21791c = FieldDescriptor.m28079of("model");

        /* renamed from: d */
        public static final FieldDescriptor f21792d = FieldDescriptor.m28079of(sod.f84368v);

        /* renamed from: e */
        public static final FieldDescriptor f21793e = FieldDescriptor.m28079of("device");

        /* renamed from: f */
        public static final FieldDescriptor f21794f = FieldDescriptor.m28079of(sod.f84370x);

        /* renamed from: g */
        public static final FieldDescriptor f21795g = FieldDescriptor.m28079of("osBuild");

        /* renamed from: h */
        public static final FieldDescriptor f21796h = FieldDescriptor.m28079of(sod.f84372z);

        /* renamed from: i */
        public static final FieldDescriptor f21797i = FieldDescriptor.m28079of(sod.f84348A);

        /* renamed from: j */
        public static final FieldDescriptor f21798j = FieldDescriptor.m28079of("locale");

        /* renamed from: k */
        public static final FieldDescriptor f21799k = FieldDescriptor.m28079of(sod.f84350C);

        /* renamed from: l */
        public static final FieldDescriptor f21800l = FieldDescriptor.m28079of("mccMnc");

        /* renamed from: m */
        public static final FieldDescriptor f21801m = FieldDescriptor.m28079of("applicationBuild");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(AndroidClientInfo androidClientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21790b, androidClientInfo.getSdkVersion());
            objectEncoderContext.add(f21791c, androidClientInfo.getModel());
            objectEncoderContext.add(f21792d, androidClientInfo.getHardware());
            objectEncoderContext.add(f21793e, androidClientInfo.getDevice());
            objectEncoderContext.add(f21794f, androidClientInfo.getProduct());
            objectEncoderContext.add(f21795g, androidClientInfo.getOsBuild());
            objectEncoderContext.add(f21796h, androidClientInfo.getManufacturer());
            objectEncoderContext.add(f21797i, androidClientInfo.getFingerprint());
            objectEncoderContext.add(f21798j, androidClientInfo.getLocale());
            objectEncoderContext.add(f21799k, androidClientInfo.getCountry());
            objectEncoderContext.add(f21800l, androidClientInfo.getMccMnc());
            objectEncoderContext.add(f21801m, androidClientInfo.getApplicationBuild());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$b */
    /* loaded from: classes4.dex */
    public static final class C4606b implements ObjectEncoder<BatchedLogRequest> {

        /* renamed from: a */
        public static final C4606b f21802a = new C4606b();

        /* renamed from: b */
        public static final FieldDescriptor f21803b = FieldDescriptor.m28079of("logRequest");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(BatchedLogRequest batchedLogRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21803b, batchedLogRequest.getLogRequests());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$c */
    /* loaded from: classes4.dex */
    public static final class C4607c implements ObjectEncoder<ClientInfo> {

        /* renamed from: a */
        public static final C4607c f21804a = new C4607c();

        /* renamed from: b */
        public static final FieldDescriptor f21805b = FieldDescriptor.m28079of(Constant.CLIENT_TYPE);

        /* renamed from: c */
        public static final FieldDescriptor f21806c = FieldDescriptor.m28079of("androidClientInfo");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(ClientInfo clientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21805b, clientInfo.getClientType());
            objectEncoderContext.add(f21806c, clientInfo.getAndroidClientInfo());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$d */
    /* loaded from: classes4.dex */
    public static final class C4608d implements ObjectEncoder<LogEvent> {

        /* renamed from: a */
        public static final C4608d f21807a = new C4608d();

        /* renamed from: b */
        public static final FieldDescriptor f21808b = FieldDescriptor.m28079of("eventTimeMs");

        /* renamed from: c */
        public static final FieldDescriptor f21809c = FieldDescriptor.m28079of("eventCode");

        /* renamed from: d */
        public static final FieldDescriptor f21810d = FieldDescriptor.m28079of("eventUptimeMs");

        /* renamed from: e */
        public static final FieldDescriptor f21811e = FieldDescriptor.m28079of("sourceExtension");

        /* renamed from: f */
        public static final FieldDescriptor f21812f = FieldDescriptor.m28079of("sourceExtensionJsonProto3");

        /* renamed from: g */
        public static final FieldDescriptor f21813g = FieldDescriptor.m28079of("timezoneOffsetSeconds");

        /* renamed from: h */
        public static final FieldDescriptor f21814h = FieldDescriptor.m28079of("networkConnectionInfo");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(LogEvent logEvent, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21808b, logEvent.getEventTimeMs());
            objectEncoderContext.add(f21809c, logEvent.getEventCode());
            objectEncoderContext.add(f21810d, logEvent.getEventUptimeMs());
            objectEncoderContext.add(f21811e, logEvent.getSourceExtension());
            objectEncoderContext.add(f21812f, logEvent.getSourceExtensionJsonProto3());
            objectEncoderContext.add(f21813g, logEvent.getTimezoneOffsetSeconds());
            objectEncoderContext.add(f21814h, logEvent.getNetworkConnectionInfo());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$e */
    /* loaded from: classes4.dex */
    public static final class C4609e implements ObjectEncoder<LogRequest> {

        /* renamed from: a */
        public static final C4609e f21815a = new C4609e();

        /* renamed from: b */
        public static final FieldDescriptor f21816b = FieldDescriptor.m28079of("requestTimeMs");

        /* renamed from: c */
        public static final FieldDescriptor f21817c = FieldDescriptor.m28079of("requestUptimeMs");

        /* renamed from: d */
        public static final FieldDescriptor f21818d = FieldDescriptor.m28079of("clientInfo");

        /* renamed from: e */
        public static final FieldDescriptor f21819e = FieldDescriptor.m28079of("logSource");

        /* renamed from: f */
        public static final FieldDescriptor f21820f = FieldDescriptor.m28079of("logSourceName");

        /* renamed from: g */
        public static final FieldDescriptor f21821g = FieldDescriptor.m28079of("logEvent");

        /* renamed from: h */
        public static final FieldDescriptor f21822h = FieldDescriptor.m28079of("qosTier");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(LogRequest logRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21816b, logRequest.getRequestTimeMs());
            objectEncoderContext.add(f21817c, logRequest.getRequestUptimeMs());
            objectEncoderContext.add(f21818d, logRequest.getClientInfo());
            objectEncoderContext.add(f21819e, logRequest.getLogSource());
            objectEncoderContext.add(f21820f, logRequest.getLogSourceName());
            objectEncoderContext.add(f21821g, logRequest.getLogEvents());
            objectEncoderContext.add(f21822h, logRequest.getQosTier());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder$f */
    /* loaded from: classes4.dex */
    public static final class C4610f implements ObjectEncoder<NetworkConnectionInfo> {

        /* renamed from: a */
        public static final C4610f f21823a = new C4610f();

        /* renamed from: b */
        public static final FieldDescriptor f21824b = FieldDescriptor.m28079of("networkType");

        /* renamed from: c */
        public static final FieldDescriptor f21825c = FieldDescriptor.m28079of("mobileSubtype");

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(NetworkConnectionInfo networkConnectionInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f21824b, networkConnectionInfo.getNetworkType());
            objectEncoderContext.add(f21825c, networkConnectionInfo.getMobileSubtype());
        }
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        C4606b c4606b = C4606b.f21802a;
        encoderConfig.registerEncoder(BatchedLogRequest.class, c4606b);
        encoderConfig.registerEncoder(C14140nj.class, c4606b);
        C4609e c4609e = C4609e.f21815a;
        encoderConfig.registerEncoder(LogRequest.class, c4609e);
        encoderConfig.registerEncoder(C4614d.class, c4609e);
        C4607c c4607c = C4607c.f21804a;
        encoderConfig.registerEncoder(ClientInfo.class, c4607c);
        encoderConfig.registerEncoder(C4612b.class, c4607c);
        C4605a c4605a = C4605a.f21789a;
        encoderConfig.registerEncoder(AndroidClientInfo.class, c4605a);
        encoderConfig.registerEncoder(C4611a.class, c4605a);
        C4608d c4608d = C4608d.f21807a;
        encoderConfig.registerEncoder(LogEvent.class, c4608d);
        encoderConfig.registerEncoder(C4613c.class, c4608d);
        C4610f c4610f = C4610f.f21823a;
        encoderConfig.registerEncoder(NetworkConnectionInfo.class, c4610f);
        encoderConfig.registerEncoder(C4615e.class, c4610f);
    }
}
