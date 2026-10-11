package androidx.credentials.provider.utils;

import android.annotation.SuppressLint;
import android.app.slice.Slice;
import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.service.credentials.BeginCreateCredentialRequest;
import android.service.credentials.BeginCreateCredentialResponse;
import android.service.credentials.CallingAppInfo;
import androidx.annotation.RequiresApi;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.provider.BeginCreateCustomCredentialRequest;
import androidx.credentials.provider.BeginCreatePasswordCredentialRequest;
import androidx.credentials.provider.BeginCreatePublicKeyCredentialRequest;
import androidx.credentials.provider.CreateEntry;
import androidx.credentials.provider.RemoteEntry;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C13685ep;
import com.sunia.HTREnginev2.C13732fp;
import com.sunia.HTREnginev2.C13944jp;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@RequiresApi(34)
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class BeginCreateCredentialUtil {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\nJ\u001a\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0003J\u001e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002¨\u0006\u001b"}, m61528d2 = {"Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;", "", "Landroid/service/credentials/BeginCreateCredentialRequest;", AbstractLogger.REQUEST, "Landroidx/credentials/provider/BeginCreateCredentialRequest;", "convertToJetpackRequest$credentials_release", "(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroidx/credentials/provider/BeginCreateCredentialRequest;", "convertToJetpackRequest", "Landroidx/credentials/provider/BeginCreateCredentialResponse;", AbstractLogger.RESPONSE, "Landroid/service/credentials/BeginCreateCredentialResponse;", "convertToFrameworkResponse", "convertToFrameworkRequest", "frameworkResponse", "convertToJetpackResponse", "Landroid/service/credentials/BeginCreateCredentialResponse$Builder;", "frameworkBuilder", "Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", "", C6999h.f39688c, "", "Landroidx/credentials/provider/CreateEntry;", "createEntries", C6998g.f39679a, Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nBeginCreateCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1855#2,2:166\n1#3:168\n*S KotlinDebug\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n*L\n123#1:166,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: d */
        public static final CreateEntry m3937d(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CreateEntry) tmp0.invoke(obj);
        }

        /* renamed from: e */
        public static final boolean m3938e(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* renamed from: f */
        public static final CreateEntry m3939f(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CreateEntry) tmp0.invoke(obj);
        }

        @NotNull
        public final BeginCreateCredentialRequest convertToFrameworkRequest(@NotNull androidx.credentials.provider.BeginCreateCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return new BeginCreateCredentialRequest(request.getType(), request.getCandidateQueryData(), request.getCallingAppInfo() != null ? new CallingAppInfo(request.getCallingAppInfo().getPackageName(), request.getCallingAppInfo().getSigningInfo(), request.getCallingAppInfo().getOrigin()) : null);
        }

        @NotNull
        public final BeginCreateCredentialResponse convertToFrameworkResponse(@NotNull androidx.credentials.provider.BeginCreateCredentialResponse response) {
            BeginCreateCredentialResponse build;
            Intrinsics.checkNotNullParameter(response, "response");
            BeginCreateCredentialResponse.Builder m54000a = C13685ep.m54000a();
            m3940g(m54000a, response.getCreateEntries());
            m3941h(m54000a, response.getRemoteEntry());
            build = m54000a.build();
            Intrinsics.checkNotNullExpressionValue(build, "frameworkBuilder.build()");
            return build;
        }

        @JvmStatic
        @NotNull
        public final androidx.credentials.provider.BeginCreateCredentialRequest convertToJetpackRequest$credentials_release(@NotNull BeginCreateCredentialRequest request) {
            String type;
            Bundle data;
            CallingAppInfo callingAppInfo;
            String packageName;
            SigningInfo signingInfo;
            String type2;
            Bundle data2;
            CallingAppInfo callingAppInfo2;
            androidx.credentials.provider.CallingAppInfo callingAppInfo3;
            String packageName2;
            SigningInfo signingInfo2;
            String type3;
            Bundle data3;
            CallingAppInfo callingAppInfo4;
            androidx.credentials.provider.CallingAppInfo callingAppInfo5;
            String packageName3;
            SigningInfo signingInfo3;
            Bundle data4;
            CallingAppInfo callingAppInfo6;
            androidx.credentials.provider.CallingAppInfo callingAppInfo7;
            String packageName4;
            SigningInfo signingInfo4;
            Intrinsics.checkNotNullParameter(request, "request");
            androidx.credentials.provider.CallingAppInfo callingAppInfo8 = null;
            try {
                type2 = request.getType();
                int hashCode = type2.hashCode();
                if (hashCode != -543568185) {
                    if (hashCode == -95037569 && type2.equals(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                        BeginCreatePublicKeyCredentialRequest.Companion companion = BeginCreatePublicKeyCredentialRequest.INSTANCE;
                        data4 = request.getData();
                        Intrinsics.checkNotNullExpressionValue(data4, "request.data");
                        callingAppInfo6 = request.getCallingAppInfo();
                        if (callingAppInfo6 != null) {
                            packageName4 = callingAppInfo6.getPackageName();
                            Intrinsics.checkNotNullExpressionValue(packageName4, "it.packageName");
                            signingInfo4 = callingAppInfo6.getSigningInfo();
                            Intrinsics.checkNotNullExpressionValue(signingInfo4, "it.signingInfo");
                            callingAppInfo7 = new androidx.credentials.provider.CallingAppInfo(packageName4, signingInfo4, callingAppInfo6.getOrigin());
                        } else {
                            callingAppInfo7 = null;
                        }
                        return companion.createFrom$credentials_release(data4, callingAppInfo7);
                    }
                } else if (type2.equals(PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    BeginCreatePasswordCredentialRequest.Companion companion2 = BeginCreatePasswordCredentialRequest.INSTANCE;
                    data2 = request.getData();
                    Intrinsics.checkNotNullExpressionValue(data2, "request.data");
                    callingAppInfo2 = request.getCallingAppInfo();
                    if (callingAppInfo2 != null) {
                        packageName2 = callingAppInfo2.getPackageName();
                        Intrinsics.checkNotNullExpressionValue(packageName2, "it.packageName");
                        signingInfo2 = callingAppInfo2.getSigningInfo();
                        Intrinsics.checkNotNullExpressionValue(signingInfo2, "it.signingInfo");
                        callingAppInfo3 = new androidx.credentials.provider.CallingAppInfo(packageName2, signingInfo2, callingAppInfo2.getOrigin());
                    } else {
                        callingAppInfo3 = null;
                    }
                    return companion2.createFrom$credentials_release(data2, callingAppInfo3);
                }
                type3 = request.getType();
                Intrinsics.checkNotNullExpressionValue(type3, "request.type");
                data3 = request.getData();
                Intrinsics.checkNotNullExpressionValue(data3, "request.data");
                callingAppInfo4 = request.getCallingAppInfo();
                if (callingAppInfo4 != null) {
                    packageName3 = callingAppInfo4.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName3, "it.packageName");
                    signingInfo3 = callingAppInfo4.getSigningInfo();
                    Intrinsics.checkNotNullExpressionValue(signingInfo3, "it.signingInfo");
                    callingAppInfo5 = new androidx.credentials.provider.CallingAppInfo(packageName3, signingInfo3, callingAppInfo4.getOrigin());
                } else {
                    callingAppInfo5 = null;
                }
                return new BeginCreateCustomCredentialRequest(type3, data3, callingAppInfo5);
            } catch (FrameworkClassParsingException unused) {
                type = request.getType();
                Intrinsics.checkNotNullExpressionValue(type, "request.type");
                data = request.getData();
                Intrinsics.checkNotNullExpressionValue(data, "request.data");
                callingAppInfo = request.getCallingAppInfo();
                if (callingAppInfo != null) {
                    packageName = callingAppInfo.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName, "it.packageName");
                    signingInfo = callingAppInfo.getSigningInfo();
                    Intrinsics.checkNotNullExpressionValue(signingInfo, "it.signingInfo");
                    callingAppInfo8 = new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, callingAppInfo.getOrigin());
                }
                return new BeginCreateCustomCredentialRequest(type, data, callingAppInfo8);
            }
        }

        @NotNull
        public final androidx.credentials.provider.BeginCreateCredentialResponse convertToJetpackResponse(@NotNull BeginCreateCredentialResponse frameworkResponse) {
            List createEntries;
            RemoteEntry remoteEntry;
            Intrinsics.checkNotNullParameter(frameworkResponse, "frameworkResponse");
            createEntries = frameworkResponse.getCreateEntries();
            Stream stream = createEntries.stream();
            final BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1 beginCreateCredentialUtil$Companion$convertToJetpackResponse$1 = new Function1<android.service.credentials.CreateEntry, CreateEntry>() { // from class: androidx.credentials.provider.utils.BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1
                @Nullable
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final CreateEntry invoke2(android.service.credentials.CreateEntry createEntry) {
                    Slice slice;
                    CreateEntry.Companion companion = CreateEntry.INSTANCE;
                    slice = createEntry.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
                    return companion.fromSlice(slice);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CreateEntry invoke(android.service.credentials.CreateEntry createEntry) {
                    return invoke2(C13944jp.m55013a(createEntry));
                }
            };
            Stream map = stream.map(new Function() { // from class: com.sunia.HTREnginev2.hp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CreateEntry m3937d;
                    m3937d = BeginCreateCredentialUtil.Companion.m3937d(Function1.this, obj);
                    return m3937d;
                }
            });
            final BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2 beginCreateCredentialUtil$Companion$convertToJetpackResponse$2 = new Function1<CreateEntry, Boolean>() { // from class: androidx.credentials.provider.utils.BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable CreateEntry createEntry) {
                    return Boolean.valueOf(createEntry != null);
                }
            };
            Stream filter = map.filter(new Predicate() { // from class: com.sunia.HTREnginev2.ip
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m3938e;
                    m3938e = BeginCreateCredentialUtil.Companion.m3938e(Function1.this, obj);
                    return m3938e;
                }
            });
            final BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3 beginCreateCredentialUtil$Companion$convertToJetpackResponse$3 = new Function1<CreateEntry, CreateEntry>() { // from class: androidx.credentials.provider.utils.BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3
                @Override // kotlin.jvm.functions.Function1
                public final CreateEntry invoke(@Nullable CreateEntry createEntry) {
                    Intrinsics.checkNotNull(createEntry);
                    return createEntry;
                }
            };
            Object collect = filter.map(new Function() { // from class: com.sunia.HTREnginev2.gp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CreateEntry m3939f;
                    m3939f = BeginCreateCredentialUtil.Companion.m3939f(Function1.this, obj);
                    return m3939f;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect, "frameworkResponse.create…lect(Collectors.toList())");
            List list = (List) collect;
            android.service.credentials.RemoteEntry remoteCreateEntry = frameworkResponse.getRemoteCreateEntry();
            if (remoteCreateEntry != null) {
                RemoteEntry.Companion companion = RemoteEntry.INSTANCE;
                Slice slice = remoteCreateEntry.getSlice();
                Intrinsics.checkNotNullExpressionValue(slice, "it.slice");
                remoteEntry = companion.fromSlice(slice);
            } else {
                remoteEntry = null;
            }
            return new androidx.credentials.provider.BeginCreateCredentialResponse(list, remoteEntry);
        }

        /* renamed from: g */
        public final void m3940g(BeginCreateCredentialResponse.Builder frameworkBuilder, List<CreateEntry> createEntries) {
            Iterator<T> it2 = createEntries.iterator();
            while (it2.hasNext()) {
                Slice slice = CreateEntry.INSTANCE.toSlice((CreateEntry) it2.next());
                if (slice != null) {
                    frameworkBuilder.addCreateEntry(C13732fp.m54154a(slice));
                }
            }
        }

        @SuppressLint({"MissingPermission"})
        /* renamed from: h */
        public final void m3941h(BeginCreateCredentialResponse.Builder frameworkBuilder, RemoteEntry remoteEntry) {
            if (remoteEntry == null) {
                return;
            }
            frameworkBuilder.setRemoteCreateEntry(new android.service.credentials.RemoteEntry(RemoteEntry.INSTANCE.toSlice(remoteEntry)));
        }

        public Companion() {
        }
    }
}
