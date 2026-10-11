package com.onyx.galaxy.note.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.common.cloud.service.WebpageService;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.category.event.MemberChargeEvent;
import com.onyx.galaxy.note.category.event.ShowJoinVipDialogEvent;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.datarepository.p045ui.DataRepositoryActivity;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.onyx.galaxy.note.usercenter.p049ui.HtmlWindowActivity;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.afk;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\"\u0010#J\"\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0012\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0002J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0007J\u0010\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0018\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00072\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0002R\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/Navigator;", "", "", "type", "Lcom/onyx/android/sdk/base/extension/StringMap;", "args", "defaultType", "", "navigate", "navigateToHtmlWindow", "navigateToLogin", "navigateToVipCenter", "navigateToMessageCenter", "navigateToSettings", "navigateToAPP", "navigateToWebpage", "navigateToRedBook", "navigateToSoftMarket", "navigateToUpgrade", "navigateToDataRepository", "getNavigateToDataUrl", "navigateToStickerMaterialCenter", "navigateToTemplateMaterialCenter", "navigateToMaterialCenter", "navigateToMemberCenter", "navigateToMemberCharge", "navigateToJoinVipDialog", MessageTemplateKt.KEY_STATISTIC_TYPE, "activateProVip", "Landroid/content/Context;", "a", "Lkotlin/Lazy;", "()Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Navigator.kt\ncom/onyx/galaxy/note/utils/Navigator\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,273:1\n41#2,5:274\n41#2,5:281\n288#3,2:279\n215#4,2:286\n215#4,2:288\n*S KotlinDebug\n*F\n+ 1 Navigator.kt\ncom/onyx/galaxy/note/utils/Navigator\n*L\n142#1:274,5\n192#1:281,5\n191#1:279,2\n204#1:286,2\n233#1:288,2\n*E\n"})
/* loaded from: classes9.dex */
public final class Navigator {

    @NotNull
    public static final Navigator INSTANCE = new Navigator();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy context;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Context>() { // from class: com.onyx.galaxy.note.utils.Navigator$context$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Context invoke() {
                return ResManager.INSTANCE.getAppContext();
            }
        });
        context = lazy;
    }

    public static /* synthetic */ void navigate$default(Navigator navigator, String str, StringMap stringMap, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            stringMap = new StringMap();
        }
        if ((i & 4) != 0) {
            str2 = "";
        }
        navigator.navigate(str, stringMap, str2);
    }

    public static /* synthetic */ void navigateToAPP$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToAPP(stringMap);
    }

    public static /* synthetic */ void navigateToDataRepository$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToDataRepository(stringMap);
    }

    public static /* synthetic */ void navigateToHtmlWindow$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToHtmlWindow(stringMap);
    }

    public static /* synthetic */ void navigateToJoinVipDialog$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToJoinVipDialog(stringMap);
    }

    public static /* synthetic */ void navigateToLogin$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToLogin(stringMap);
    }

    public static /* synthetic */ void navigateToMaterialCenter$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToMaterialCenter(stringMap);
    }

    public static /* synthetic */ void navigateToMemberCenter$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToMemberCenter(stringMap);
    }

    public static /* synthetic */ void navigateToMemberCharge$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToMemberCharge(stringMap);
    }

    public static /* synthetic */ void navigateToMessageCenter$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToMessageCenter(stringMap);
    }

    public static /* synthetic */ void navigateToRedBook$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToRedBook(stringMap);
    }

    public static /* synthetic */ void navigateToSettings$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToSettings(stringMap);
    }

    public static /* synthetic */ void navigateToSoftMarket$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToSoftMarket(stringMap);
    }

    public static /* synthetic */ void navigateToUpgrade$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToUpgrade(stringMap);
    }

    public static /* synthetic */ void navigateToVipCenter$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToVipCenter(stringMap);
    }

    public static /* synthetic */ void navigateToWebpage$default(Navigator navigator, StringMap stringMap, int i, Object obj) {
        if ((i & 1) != 0) {
            stringMap = new StringMap();
        }
        navigator.navigateToWebpage(stringMap);
    }

    /* renamed from: a */
    public final Context m51979a() {
        return (Context) context.getValue();
    }

    public final void activateProVip(@NotNull final String r8) {
        Intrinsics.checkNotNullParameter(r8, "statisticType");
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.utils.Navigator$activateProVip$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                StringMap stringMap = new StringMap();
                stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, r8);
                Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MEMBER_CHARGE, stringMap, null, 4, null);
            }
        }, null, null, false, 14, null);
    }

    @NotNull
    public final String getNavigateToDataUrl() {
        return WebpageService.INSTANCE.getGalaxyService(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getDataRepositoryPath());
    }

    public final void navigate(@NotNull String type, @NotNull StringMap args, @NotNull String defaultType) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(defaultType, "defaultType");
        if (StringKt.isEmpty(type)) {
            type = defaultType;
        }
        args.put(NavigationType.KEY_NAV_TYPE, type);
        switch (type.hashCode()) {
            case -1997438884:
                if (type.equals(NavigationType.MARKET)) {
                    navigateToSoftMarket(args);
                    return;
                }
                return;
            case -1707950693:
                if (type.equals(NavigationType.WEB_URL)) {
                    navigateToWebpage(args);
                    return;
                }
                return;
            case -1548136710:
                if (type.equals(NavigationType.RED_BOOK)) {
                    navigateToRedBook(args);
                    return;
                }
                return;
            case -1230141668:
                if (type.equals(NavigationType.MESSAGE_CENTER)) {
                    navigateToMessageCenter(args);
                    return;
                }
                return;
            case -694830161:
                if (type.equals(NavigationType.MEMBER_CENTER)) {
                    navigateToMemberCenter(args);
                    return;
                }
                return;
            case -692448754:
                if (type.equals(NavigationType.MEMBER_CHARGE)) {
                    navigateToMemberCharge(args);
                    return;
                }
                return;
            case -177385189:
                if (type.equals(NavigationType.NEW_HTML_WINDOW)) {
                    navigateToHtmlWindow(args);
                    return;
                }
                return;
            case afk.f64642n /* 65025 */:
                if (type.equals("APP")) {
                    navigateToAPP(args);
                    return;
                }
                return;
            case 73596745:
                if (type.equals(NavigationType.LOGIN)) {
                    navigateToLogin(args);
                    return;
                }
                return;
            case 120215218:
                if (type.equals(NavigationType.VIP_CENTER)) {
                    navigateToVipCenter(args);
                    return;
                }
                return;
            case 1433481724:
                if (type.equals("Upgrade")) {
                    navigateToUpgrade(args);
                    return;
                }
                return;
            case 1499275331:
                if (type.equals(NavigationType.SETTINGS)) {
                    navigateToSettings(args);
                    return;
                }
                return;
            case 1515456923:
                if (type.equals(NavigationType.JOIN_VIP_DIALOG)) {
                    navigateToJoinVipDialog(args);
                    return;
                }
                return;
            case 1774303970:
                if (type.equals(NavigationType.LIBRARY_MATERIAL)) {
                    navigateToMaterialCenter(args);
                    return;
                }
                return;
            case 1830861979:
                if (type.equals(NavigationType.LIBRARY)) {
                    navigateToDataRepository(args);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public final void navigateToAPP(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            String str = (String) args.get(MessageConst.KEY_NATIVE_LINK);
            ContextKt.openWithLocalApplication$default(m51979a(), str == null ? "" : str, null, false, 2, null);
        } catch (Throwable unused) {
            String str2 = (String) args.get(MessageConst.KEY_WEB_LINK);
            final String str3 = str2 != null ? str2 : "";
            AnyKt.runCatching$default(this, false, new Function1<Navigator, Unit>() { // from class: com.onyx.galaxy.note.utils.Navigator$navigateToAPP$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Navigator navigator) {
                    invoke2(navigator);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Navigator runCatching) {
                    Context m51979a;
                    Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                    m51979a = runCatching.m51979a();
                    ContextKt.openWithLocalApplication$default(m51979a, str3, null, false, 6, null);
                }
            }, 1, null);
        }
    }

    public final void navigateToDataRepository(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Uri.Builder buildUpon = Uri.parse(getNavigateToDataUrl()).buildUpon();
        for (Map.Entry<String, String> entry : args.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        Intent intent = new Intent(m51979a(), (Class<?>) DataRepositoryActivity.class);
        intent.putExtra("url", buildUpon.build().toString());
        intent.addFlags(268435456);
        m51979a().startActivity(intent);
    }

    public final void navigateToHtmlWindow(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = (String) args.get("url");
        if (str == null) {
            str = "";
        }
        String str2 = (String) args.get("title");
        String str3 = str2 != null ? str2 : "";
        String str4 = (String) args.get(MessageConst.KEY_HAS_LOADING_CALLBACK);
        Intent intent = new Intent(m51979a(), (Class<?>) HtmlWindowActivity.class);
        intent.putExtra("url", str);
        intent.putExtra("title", str3);
        intent.putExtra(MessageConst.KEY_HAS_LOADING_CALLBACK, str4);
        intent.addFlags(268435456);
        ContextKt.startActivitySafely(m51979a(), intent);
    }

    public final void navigateToJoinVipDialog(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        GlobalBundle.INSTANCE.postEvent(new ShowJoinVipDialogEvent(args));
    }

    public final void navigateToLogin(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.navigate_already_login, false, 2, (Object) null);
            return;
        }
        Intent intent = new Intent(m51979a(), (Class<?>) LoginActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(NavigationType.KEY_NAV_TYPE, (String) args.get(NavigationType.KEY_NAV_TYPE));
        intent.putExtra(NavigationType.KEY_NAV_DATA, JSONUtils.INSTANCE.toJson(args));
        m51979a().startActivity(intent);
    }

    public final void navigateToMaterialCenter(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intent intent = new Intent(m51979a(), (Class<?>) DataRepositoryActivity.class);
        Uri.Builder buildUpon = Uri.parse(WebpageService.INSTANCE.getMaterialCenterService()).buildUpon();
        for (Map.Entry<String, String> entry : args.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        intent.putExtra("url", buildUpon.build().toString());
        intent.addFlags(268435456);
        m51979a().startActivity(intent);
    }

    public final void navigateToMemberCenter(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            navigateToLogin(args);
            return;
        }
        String uri = Uri.parse(WebpageService.INSTANCE.getMemberCenterService()).buildUpon().appendQueryParameter("from", OnyxStatisticConstant.TRIGGER_HOMEPAGE_NOTELIMIT_OVERLAY).build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        args.put("url", uri);
        args.put(MessageConst.KEY_HAS_LOADING_CALLBACK, "true");
        navigateToHtmlWindow(args);
    }

    public final void navigateToMemberCharge(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = (String) args.get(MessageTemplateKt.KEY_STATISTIC_TYPE);
        if (str == null) {
            str = "";
        }
        GlobalBundle.INSTANCE.postEvent(new MemberChargeEvent(str));
    }

    public final void navigateToMessageCenter(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intent intent = new Intent(m51979a(), (Class<?>) UserCenterActivity.class);
        intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, AccountVerifyPurpose.PURPOSE_MESSAGE_CENTER);
        intent.addFlags(268435456);
        m51979a().startActivity(intent);
    }

    public final void navigateToRedBook(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        boolean isPackageInstalled = ContextKt.isPackageInstalled(m51979a(), MarketUtils.PACKAGE_RED_BOOK);
        String str = (String) args.get(MessageConst.KEY_NATIVE_LINK);
        String str2 = str == null ? "" : str;
        if (isPackageInstalled && StringKt.isNotBlank(str2)) {
            ContextKt.openWithLocalApplication$default(m51979a(), str2, MarketUtils.PACKAGE_RED_BOOK, false, 4, null);
        } else {
            String str3 = (String) args.get(MessageConst.KEY_WEB_LINK);
            ContextKt.openWithLocalApplication$default(m51979a(), str3 == null ? "" : str3, null, false, 6, null);
        }
    }

    public final void navigateToSettings(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intent intent = new Intent(m51979a(), (Class<?>) SettingsActivity.class);
        String str = (String) args.get(MessageConst.KEY_TAB_ID);
        if (str != null) {
            intent.putExtra(SettingsActivity.SETTING_MENU_NAME, Integer.parseInt(str));
        }
        intent.addFlags(268435456);
        m51979a().startActivity(intent);
    }

    public final void navigateToSoftMarket(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            String str = (String) args.get(MessageConst.KEY_PACKAGE_NAME);
            if (str == null) {
                str = "";
            }
            MarketUtils.INSTANCE.openMarketByPackage(str);
        } catch (Throwable unused) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.upgrade_market_not_found, false, 2, (Object) null);
        }
    }

    public final void navigateToStickerMaterialCenter() {
        StringMap stringMap = new StringMap();
        stringMap.put("type", "sticker");
        navigateToMaterialCenter(stringMap);
    }

    public final void navigateToTemplateMaterialCenter() {
        StringMap stringMap = new StringMap();
        stringMap.put("type", "template");
        navigateToMaterialCenter(stringMap);
    }

    public final void navigateToUpgrade(@NotNull StringMap args) {
        Object obj;
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            MarketUtils marketUtils = MarketUtils.INSTANCE;
            String marketChannel = marketUtils.getMarketChannel();
            if (marketUtils.isChannelInstalled(marketChannel)) {
                marketUtils.openMarketByChannel(marketChannel);
                return;
            }
            Iterator<T> it2 = marketUtils.getSUPPORTED_NOTE_CHANNELS().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (MarketUtils.INSTANCE.isChannelInstalled((String) obj)) {
                        break;
                    }
                }
            }
            String str = (String) obj;
            if (str != null) {
                MarketUtils.INSTANCE.openMarketByChannel(str);
            } else {
                ContextKt.openWithLocalApplication$default(m51979a(), MarketUtils.INSTANCE.getMARKET_WEBSITE_STAR_NOTE(), null, false, 6, null);
            }
        } catch (Throwable unused) {
            ContextKt.openWithLocalApplication$default(m51979a(), MarketUtils.INSTANCE.getMARKET_WEBSITE_STAR_NOTE(), null, false, 6, null);
        }
    }

    public final void navigateToVipCenter(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            navigateToLogin(args);
            return;
        }
        Intent intent = new Intent(m51979a(), (Class<?>) UserCenterActivity.class);
        intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, "none");
        String str = (String) args.get(OnyxStatisticConstant.KEY_TRIGGER_FROM);
        if (str != null) {
            intent.putExtra(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.parseInt(str));
        }
        intent.addFlags(268435456);
        m51979a().startActivity(intent);
    }

    public final void navigateToWebpage(@NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = (String) args.get("url");
        if (str == null) {
            str = "";
        }
        ContextKt.openWithLocalApplication$default(m51979a(), str, null, false, 6, null);
    }
}
