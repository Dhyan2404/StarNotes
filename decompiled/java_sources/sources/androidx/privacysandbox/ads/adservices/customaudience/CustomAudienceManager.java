package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.LeaveCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.aoe;
import com.sunia.HTREnginev2.vtd;
import com.sunia.HTREnginev2.wne;
import com.sunia.HTREnginev2.xne;
import com.sunia.HTREnginev2.yne;
import com.sunia.HTREnginev2.zne;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\t\b\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H§@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager;", "", "Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;", AbstractLogger.REQUEST, "", "joinCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;", "leaveCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "a", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class CustomAudienceManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final CustomAudienceManager obtain(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (AdServicesInfo.INSTANCE.version() >= 4) {
                return new C1284a(context);
            }
            return null;
        }

        public Companion() {
        }
    }

    @JvmStatic
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @Nullable
    public static final CustomAudienceManager obtain(@NotNull Context context) {
        return INSTANCE.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object joinCustomAudience(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object leaveCustomAudience(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull Continuation<? super Unit> continuation);

    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension(extension = 1000000, version = 4)
    @SourceDebugExtension({"SMAP\nCustomAudienceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomAudienceManager.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,220:1\n314#2,11:221\n314#2,11:232\n*S KotlinDebug\n*F\n+ 1 CustomAudienceManager.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager$Api33Ext4Impl\n*L\n111#1:221,11\n123#1:232,11\n*E\n"})
    /* renamed from: androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager$a */
    /* loaded from: classes3.dex */
    public static final class C1284a extends CustomAudienceManager {

        /* renamed from: a */
        @NotNull
        public final android.adservices.customaudience.CustomAudienceManager f9048a;

        public C1284a(@NotNull android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
            Intrinsics.checkNotNullParameter(customAudienceManager, "customAudienceManager");
            this.f9048a = customAudienceManager;
        }

        /* renamed from: d */
        public final List<AdData> m5381d(List<androidx.privacysandbox.ads.adservices.common.AdData> list) {
            AdData.Builder metadata;
            AdData.Builder renderUri;
            AdData build;
            ArrayList arrayList = new ArrayList();
            for (androidx.privacysandbox.ads.adservices.common.AdData adData : list) {
                metadata = yne.m58457a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                build = renderUri.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        /* renamed from: e */
        public final AdTechIdentifier m5382e(androidx.privacysandbox.ads.adservices.common.AdTechIdentifier adTechIdentifier) {
            AdTechIdentifier fromString;
            fromString = AdTechIdentifier.fromString(adTechIdentifier.getIdentifier());
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(input.identifier)");
            return fromString;
        }

        /* renamed from: f */
        public final AdSelectionSignals m5383f(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals) {
            AdSelectionSignals fromString;
            if (adSelectionSignals == null) {
                return null;
            }
            fromString = AdSelectionSignals.fromString(adSelectionSignals.getSignals());
            return fromString;
        }

        /* renamed from: g */
        public final android.adservices.customaudience.CustomAudience m5384g(CustomAudience customAudience) {
            CustomAudience.Builder activationTime;
            CustomAudience.Builder ads;
            CustomAudience.Builder biddingLogicUri;
            CustomAudience.Builder buyer;
            CustomAudience.Builder dailyUpdateUri;
            CustomAudience.Builder expirationTime;
            CustomAudience.Builder name;
            CustomAudience.Builder trustedBiddingData;
            CustomAudience.Builder userBiddingSignals;
            android.adservices.customaudience.CustomAudience build;
            activationTime = zne.m58732a().setActivationTime(customAudience.getActivationTime());
            ads = activationTime.setAds(m5381d(customAudience.getAds()));
            biddingLogicUri = ads.setBiddingLogicUri(customAudience.getBiddingLogicUri());
            buyer = biddingLogicUri.setBuyer(m5382e(customAudience.getBuyer()));
            dailyUpdateUri = buyer.setDailyUpdateUri(customAudience.getDailyUpdateUri());
            expirationTime = dailyUpdateUri.setExpirationTime(customAudience.getExpirationTime());
            name = expirationTime.setName(customAudience.getName());
            trustedBiddingData = name.setTrustedBiddingData(m5387j(customAudience.getTrustedBiddingSignals()));
            userBiddingSignals = trustedBiddingData.setUserBiddingSignals(m5383f(customAudience.getUserBiddingSignals()));
            build = userBiddingSignals.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            return build;
        }

        /* renamed from: h */
        public final android.adservices.customaudience.JoinCustomAudienceRequest m5385h(JoinCustomAudienceRequest joinCustomAudienceRequest) {
            JoinCustomAudienceRequest.Builder customAudience;
            android.adservices.customaudience.JoinCustomAudienceRequest build;
            customAudience = aoe.m53055a().setCustomAudience(m5384g(joinCustomAudienceRequest.getCustomAudience()));
            build = customAudience.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            return build;
        }

        /* renamed from: i */
        public final android.adservices.customaudience.LeaveCustomAudienceRequest m5386i(LeaveCustomAudienceRequest leaveCustomAudienceRequest) {
            LeaveCustomAudienceRequest.Builder buyer;
            LeaveCustomAudienceRequest.Builder name;
            android.adservices.customaudience.LeaveCustomAudienceRequest build;
            buyer = xne.m58295a().setBuyer(m5382e(leaveCustomAudienceRequest.getBuyer()));
            name = buyer.setName(leaveCustomAudienceRequest.getName());
            build = name.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            return build;
        }

        /* renamed from: j */
        public final android.adservices.customaudience.TrustedBiddingData m5387j(TrustedBiddingData trustedBiddingData) {
            TrustedBiddingData.Builder trustedBiddingKeys;
            TrustedBiddingData.Builder trustedBiddingUri;
            android.adservices.customaudience.TrustedBiddingData build;
            if (trustedBiddingData == null) {
                return null;
            }
            trustedBiddingKeys = wne.m58110a().setTrustedBiddingKeys(trustedBiddingData.getTrustedBiddingKeys());
            trustedBiddingUri = trustedBiddingKeys.setTrustedBiddingUri(trustedBiddingData.getTrustedBiddingUri());
            build = trustedBiddingUri.build();
            return build;
        }

        @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @Nullable
        public Object joinCustomAudience(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
            cancellableContinuationImpl.initCancellability();
            this.f9048a.joinCustomAudience(m5385h(joinCustomAudienceRequest), new vtd(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @Nullable
        public Object leaveCustomAudience(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
            cancellableContinuationImpl.initCancellability();
            this.f9048a.leaveCustomAudience(m5386i(leaveCustomAudienceRequest), new vtd(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1284a(@org.jetbrains.annotations.NotNull android.content.Context r2) {
            /*
                r1 = this;
                java.lang.String r0 = "context"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                java.lang.Class r0 = com.sunia.HTREnginev2.tne.m57415a()
                java.lang.Object r2 = r2.getSystemService(r0)
                java.lang.String r0 = "context.getSystemService…:class.java\n            )"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
                android.adservices.customaudience.CustomAudienceManager r2 = com.sunia.HTREnginev2.une.m57647a(r2)
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager.C1284a.<init>(android.content.Context):void");
        }
    }
}
