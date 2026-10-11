package androidx.credentials.provider.utils;

import android.annotation.SuppressLint;
import android.app.slice.Slice;
import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.service.credentials.BeginGetCredentialOption;
import android.service.credentials.BeginGetCredentialRequest;
import android.service.credentials.BeginGetCredentialResponse;
import android.service.credentials.CallingAppInfo;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.Action;
import androidx.credentials.provider.AuthenticationAction;
import androidx.credentials.provider.BeginGetCredentialOption;
import androidx.credentials.provider.CredentialEntry;
import androidx.credentials.provider.RemoteEntry;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C13737fq;
import com.sunia.HTREnginev2.C13782gq;
import com.sunia.HTREnginev2.C14107mp;
import com.sunia.HTREnginev2.C14411sp;
import com.sunia.HTREnginev2.C14467tp;
import java.util.ArrayList;
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
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/provider/utils/BeginGetCredentialUtil;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class BeginGetCredentialUtil {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0003J\u001e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u001e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000e2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0014H\u0002J\u001e\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000e2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0014H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u001fH\u0002¨\u0006%"}, m61528d2 = {"Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;", "", "Landroid/service/credentials/BeginGetCredentialRequest;", AbstractLogger.REQUEST, "Landroidx/credentials/provider/BeginGetCredentialRequest;", "convertToJetpackRequest$credentials_release", "(Landroid/service/credentials/BeginGetCredentialRequest;)Landroidx/credentials/provider/BeginGetCredentialRequest;", "convertToJetpackRequest", "Landroidx/credentials/provider/BeginGetCredentialResponse;", AbstractLogger.RESPONSE, "Landroid/service/credentials/BeginGetCredentialResponse;", "convertToFrameworkResponse", "convertToFrameworkRequest", "convertToJetpackResponse", "Landroid/service/credentials/BeginGetCredentialResponse$Builder;", "frameworkBuilder", "Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", "", "y", "", "Landroidx/credentials/provider/AuthenticationAction;", "authenticationActions", "w", "builder", "Landroidx/credentials/provider/Action;", "actionEntries", "v", "Landroidx/credentials/provider/CredentialEntry;", "credentialEntries", "x", "Landroidx/credentials/provider/BeginGetCredentialOption;", "option", "Landroid/service/credentials/BeginGetCredentialOption;", "l", Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nBeginGetCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1855#2,2:179\n1855#2,2:181\n1855#2,2:183\n1855#2,2:185\n1#3:187\n*S KotlinDebug\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n*L\n43#1:179,2\n86#1:181,2\n99#1:183,2\n112#1:185,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: k */
        public static final BeginGetCredentialOption m3952k(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return C14107mp.m55668a(tmp0.invoke(obj));
        }

        /* renamed from: m */
        public static final boolean m3953m(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* renamed from: n */
        public static final Action m3954n(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Action) tmp0.invoke(obj);
        }

        /* renamed from: o */
        public static final AuthenticationAction m3955o(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AuthenticationAction) tmp0.invoke(obj);
        }

        /* renamed from: p */
        public static final boolean m3956p(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* renamed from: q */
        public static final AuthenticationAction m3957q(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AuthenticationAction) tmp0.invoke(obj);
        }

        /* renamed from: r */
        public static final CredentialEntry m3958r(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CredentialEntry) tmp0.invoke(obj);
        }

        /* renamed from: s */
        public static final boolean m3959s(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* renamed from: t */
        public static final CredentialEntry m3960t(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CredentialEntry) tmp0.invoke(obj);
        }

        /* renamed from: u */
        public static final Action m3961u(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Action) tmp0.invoke(obj);
        }

        @NotNull
        public final BeginGetCredentialRequest convertToFrameworkRequest(@NotNull androidx.credentials.provider.BeginGetCredentialRequest request) {
            BeginGetCredentialRequest.Builder beginGetCredentialOptions;
            BeginGetCredentialRequest build;
            Intrinsics.checkNotNullParameter(request, "request");
            BeginGetCredentialRequest.Builder builder = new BeginGetCredentialRequest.Builder();
            if (request.getCallingAppInfo() != null) {
                builder.setCallingAppInfo(new CallingAppInfo(request.getCallingAppInfo().getPackageName(), request.getCallingAppInfo().getSigningInfo(), request.getCallingAppInfo().getOrigin()));
            }
            Stream<androidx.credentials.provider.BeginGetCredentialOption> stream = request.getBeginGetCredentialOptions().stream();
            final BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1 beginGetCredentialUtil$Companion$convertToFrameworkRequest$1 = new Function1<androidx.credentials.provider.BeginGetCredentialOption, BeginGetCredentialOption>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1
                @Override // kotlin.jvm.functions.Function1
                public final BeginGetCredentialOption invoke(androidx.credentials.provider.BeginGetCredentialOption option) {
                    BeginGetCredentialOption m3962l;
                    BeginGetCredentialUtil.Companion companion = BeginGetCredentialUtil.INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(option, "option");
                    m3962l = companion.m3962l(option);
                    return m3962l;
                }
            };
            beginGetCredentialOptions = builder.setBeginGetCredentialOptions((List) stream.map(new Function() { // from class: com.sunia.HTREnginev2.cq
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BeginGetCredentialOption m3952k;
                    m3952k = BeginGetCredentialUtil.Companion.m3952k(Function1.this, obj);
                    return m3952k;
                }
            }).collect(Collectors.toList()));
            build = beginGetCredentialOptions.build();
            Intrinsics.checkNotNullExpressionValue(build, "builder.setBeginGetCrede…\n                .build()");
            return build;
        }

        @NotNull
        public final BeginGetCredentialResponse convertToFrameworkResponse(@NotNull androidx.credentials.provider.BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            BeginGetCredentialResponse.Builder builder = new BeginGetCredentialResponse.Builder();
            m3965x(builder, response.getCredentialEntries());
            m3963v(builder, response.getActions());
            m3964w(builder, response.getAuthenticationActions());
            m3966y(builder, response.getRemoteEntry());
            BeginGetCredentialResponse build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "frameworkBuilder.build()");
            return build;
        }

        @JvmStatic
        @NotNull
        public final androidx.credentials.provider.BeginGetCredentialRequest convertToJetpackRequest$credentials_release(@NotNull BeginGetCredentialRequest request) {
            List beginGetCredentialOptions;
            CallingAppInfo callingAppInfo;
            androidx.credentials.provider.CallingAppInfo callingAppInfo2;
            String packageName;
            SigningInfo signingInfo;
            String type;
            Bundle candidateQueryData;
            Intrinsics.checkNotNullParameter(request, "request");
            ArrayList arrayList = new ArrayList();
            beginGetCredentialOptions = request.getBeginGetCredentialOptions();
            Intrinsics.checkNotNullExpressionValue(beginGetCredentialOptions, "request.beginGetCredentialOptions");
            Iterator it2 = beginGetCredentialOptions.iterator();
            while (it2.hasNext()) {
                BeginGetCredentialOption m55668a = C14107mp.m55668a(it2.next());
                BeginGetCredentialOption.Companion companion = androidx.credentials.provider.BeginGetCredentialOption.INSTANCE;
                String id = m55668a.getId();
                Intrinsics.checkNotNullExpressionValue(id, "it.id");
                type = m55668a.getType();
                Intrinsics.checkNotNullExpressionValue(type, "it.type");
                candidateQueryData = m55668a.getCandidateQueryData();
                Intrinsics.checkNotNullExpressionValue(candidateQueryData, "it.candidateQueryData");
                arrayList.add(companion.createFrom$credentials_release(id, type, candidateQueryData));
            }
            callingAppInfo = request.getCallingAppInfo();
            if (callingAppInfo != null) {
                packageName = callingAppInfo.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "it.packageName");
                signingInfo = callingAppInfo.getSigningInfo();
                Intrinsics.checkNotNullExpressionValue(signingInfo, "it.signingInfo");
                callingAppInfo2 = new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, callingAppInfo.getOrigin());
            } else {
                callingAppInfo2 = null;
            }
            return new androidx.credentials.provider.BeginGetCredentialRequest(arrayList, callingAppInfo2);
        }

        @NotNull
        public final androidx.credentials.provider.BeginGetCredentialResponse convertToJetpackResponse(@NotNull BeginGetCredentialResponse response) {
            RemoteEntry remoteEntry;
            Intrinsics.checkNotNullParameter(response, "response");
            Stream<android.service.credentials.CredentialEntry> stream = response.getCredentialEntries().stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$1 beginGetCredentialUtil$Companion$convertToJetpackResponse$1 = new Function1<android.service.credentials.CredentialEntry, CredentialEntry>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$1
                @Nullable
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final CredentialEntry invoke2(android.service.credentials.CredentialEntry credentialEntry) {
                    Slice slice;
                    CredentialEntry.Companion companion = CredentialEntry.INSTANCE;
                    slice = credentialEntry.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
                    return companion.createFrom$credentials_release(slice);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CredentialEntry invoke(android.service.credentials.CredentialEntry credentialEntry) {
                    return invoke2(C13737fq.m54172a(credentialEntry));
                }
            };
            Stream<R> map = stream.map(new Function() { // from class: com.sunia.HTREnginev2.dq
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CredentialEntry m3958r;
                    m3958r = BeginGetCredentialUtil.Companion.m3958r(Function1.this, obj);
                    return m3958r;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$2 beginGetCredentialUtil$Companion$convertToJetpackResponse$2 = new Function1<CredentialEntry, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable CredentialEntry credentialEntry) {
                    return Boolean.valueOf(credentialEntry != null);
                }
            };
            Stream filter = map.filter(new Predicate() { // from class: com.sunia.HTREnginev2.up
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m3959s;
                    m3959s = BeginGetCredentialUtil.Companion.m3959s(Function1.this, obj);
                    return m3959s;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$3 beginGetCredentialUtil$Companion$convertToJetpackResponse$3 = new Function1<CredentialEntry, CredentialEntry>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$3
                @Override // kotlin.jvm.functions.Function1
                public final CredentialEntry invoke(@Nullable CredentialEntry credentialEntry) {
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
            };
            Object collect = filter.map(new Function() { // from class: com.sunia.HTREnginev2.vp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CredentialEntry m3960t;
                    m3960t = BeginGetCredentialUtil.Companion.m3960t(Function1.this, obj);
                    return m3960t;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect, "response.credentialEntri…lect(Collectors.toList())");
            List list = (List) collect;
            Stream<android.service.credentials.Action> stream2 = response.getActions().stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$4 beginGetCredentialUtil$Companion$convertToJetpackResponse$4 = new Function1<android.service.credentials.Action, Action>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$4
                @Nullable
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Action invoke2(android.service.credentials.Action action) {
                    Slice slice;
                    Action.Companion companion = Action.INSTANCE;
                    slice = action.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
                    return companion.fromSlice(slice);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Action invoke(android.service.credentials.Action action) {
                    return invoke2(C13782gq.m54335a(action));
                }
            };
            Stream<R> map2 = stream2.map(new Function() { // from class: com.sunia.HTREnginev2.wp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Action m3961u;
                    m3961u = BeginGetCredentialUtil.Companion.m3961u(Function1.this, obj);
                    return m3961u;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$5 beginGetCredentialUtil$Companion$convertToJetpackResponse$5 = new Function1<Action, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$5
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable Action action) {
                    return Boolean.valueOf(action != null);
                }
            };
            Stream filter2 = map2.filter(new Predicate() { // from class: com.sunia.HTREnginev2.xp
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m3953m;
                    m3953m = BeginGetCredentialUtil.Companion.m3953m(Function1.this, obj);
                    return m3953m;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$6 beginGetCredentialUtil$Companion$convertToJetpackResponse$6 = new Function1<Action, Action>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$6
                @Override // kotlin.jvm.functions.Function1
                public final Action invoke(@Nullable Action action) {
                    Intrinsics.checkNotNull(action);
                    return action;
                }
            };
            Object collect2 = filter2.map(new Function() { // from class: com.sunia.HTREnginev2.yp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Action m3954n;
                    m3954n = BeginGetCredentialUtil.Companion.m3954n(Function1.this, obj);
                    return m3954n;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect2, "response.actions.stream(…lect(Collectors.toList())");
            List list2 = (List) collect2;
            Stream<android.service.credentials.Action> stream3 = response.getAuthenticationActions().stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$7 beginGetCredentialUtil$Companion$convertToJetpackResponse$7 = new Function1<android.service.credentials.Action, AuthenticationAction>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$7
                @Nullable
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final AuthenticationAction invoke2(android.service.credentials.Action action) {
                    Slice slice;
                    AuthenticationAction.Companion companion = AuthenticationAction.INSTANCE;
                    slice = action.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
                    return companion.fromSlice(slice);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ AuthenticationAction invoke(android.service.credentials.Action action) {
                    return invoke2(C13782gq.m54335a(action));
                }
            };
            Stream<R> map3 = stream3.map(new Function() { // from class: com.sunia.HTREnginev2.zp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AuthenticationAction m3955o;
                    m3955o = BeginGetCredentialUtil.Companion.m3955o(Function1.this, obj);
                    return m3955o;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$8 beginGetCredentialUtil$Companion$convertToJetpackResponse$8 = new Function1<AuthenticationAction, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$8
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable AuthenticationAction authenticationAction) {
                    return Boolean.valueOf(authenticationAction != null);
                }
            };
            Stream filter3 = map3.filter(new Predicate() { // from class: com.sunia.HTREnginev2.aq
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m3956p;
                    m3956p = BeginGetCredentialUtil.Companion.m3956p(Function1.this, obj);
                    return m3956p;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$9 beginGetCredentialUtil$Companion$convertToJetpackResponse$9 = new Function1<AuthenticationAction, AuthenticationAction>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$9
                @Override // kotlin.jvm.functions.Function1
                public final AuthenticationAction invoke(@Nullable AuthenticationAction authenticationAction) {
                    Intrinsics.checkNotNull(authenticationAction);
                    return authenticationAction;
                }
            };
            Object collect3 = filter3.map(new Function() { // from class: com.sunia.HTREnginev2.bq
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AuthenticationAction m3957q;
                    m3957q = BeginGetCredentialUtil.Companion.m3957q(Function1.this, obj);
                    return m3957q;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect3, "response.authenticationA…lect(Collectors.toList())");
            List list3 = (List) collect3;
            android.service.credentials.RemoteEntry remoteCredentialEntry = response.getRemoteCredentialEntry();
            if (remoteCredentialEntry != null) {
                RemoteEntry.Companion companion = RemoteEntry.INSTANCE;
                Slice slice = remoteCredentialEntry.getSlice();
                Intrinsics.checkNotNullExpressionValue(slice, "it.slice");
                remoteEntry = companion.fromSlice(slice);
            } else {
                remoteEntry = null;
            }
            return new androidx.credentials.provider.BeginGetCredentialResponse(list, list2, list3, remoteEntry);
        }

        /* renamed from: l */
        public final android.service.credentials.BeginGetCredentialOption m3962l(androidx.credentials.provider.BeginGetCredentialOption option) {
            return new android.service.credentials.BeginGetCredentialOption(option.getId(), option.getType(), option.getCandidateQueryData());
        }

        /* renamed from: v */
        public final void m3963v(BeginGetCredentialResponse.Builder builder, List<Action> actionEntries) {
            for (Action action : actionEntries) {
                C14467tp.m57420a();
                builder.addAction(C14411sp.m57225a(Action.INSTANCE.toSlice(action)));
            }
        }

        /* renamed from: w */
        public final void m3964w(BeginGetCredentialResponse.Builder frameworkBuilder, List<AuthenticationAction> authenticationActions) {
            for (AuthenticationAction authenticationAction : authenticationActions) {
                C14467tp.m57420a();
                frameworkBuilder.addAuthenticationAction(C14411sp.m57225a(AuthenticationAction.INSTANCE.toSlice(authenticationAction)));
            }
        }

        /* renamed from: x */
        public final void m3965x(BeginGetCredentialResponse.Builder builder, List<? extends CredentialEntry> credentialEntries) {
            for (CredentialEntry credentialEntry : credentialEntries) {
                Slice slice$credentials_release = CredentialEntry.INSTANCE.toSlice$credentials_release(credentialEntry);
                if (slice$credentials_release != null) {
                    builder.addCredentialEntry(new android.service.credentials.CredentialEntry(new android.service.credentials.BeginGetCredentialOption(credentialEntry.getBeginGetCredentialOption().getId(), credentialEntry.getType(), Bundle.EMPTY), slice$credentials_release));
                }
            }
        }

        @SuppressLint({"MissingPermission"})
        /* renamed from: y */
        public final void m3966y(BeginGetCredentialResponse.Builder frameworkBuilder, RemoteEntry remoteEntry) {
            if (remoteEntry == null) {
                return;
            }
            frameworkBuilder.setRemoteCredentialEntry(new android.service.credentials.RemoteEntry(RemoteEntry.INSTANCE.toSlice(remoteEntry)));
        }

        public Companion() {
        }
    }
}
