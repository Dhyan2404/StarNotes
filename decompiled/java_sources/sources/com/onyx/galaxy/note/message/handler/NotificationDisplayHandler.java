package com.onyx.galaxy.note.message.handler;

import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.data.message.model.NotificationModelKt;
import com.onyx.galaxy.note.message.dialog.NotificationBasePopup;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b7\u00108J\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\n\u0010\t\u001a\u00020\b*\u00020\u0005J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\bR\u0014\u0010\u001a\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001bR\u0014\u0010 \u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u001bR\u0014\u0010!\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u001bR\u0014\u0010\"\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u001bR\u0014\u0010#\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u001bR\u0014\u0010$\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u001bR\u0014\u0010%\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u001bR\u0014\u0010&\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u001bR\u0014\u0010'\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u001bR\u0014\u0010(\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u001bR\u0014\u0010)\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u001bR\u0014\u0010*\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u001bR\u0014\u0010+\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u001bR\u0014\u0010,\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010\u001bR\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;", "", "", "invalidate", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "notifications", "filter", "", "getGroup", FunctionKey.NOTIFICATION, "", "isHandled", "handle", "handleAlwaysType", "onShow", "onPrimaryButtonClick", "onSecondaryButtonClick", "navType", "Lcom/onyx/android/sdk/base/extension/StringMap;", "args", "navigateWithStrategy", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "popup", "strategy", "closeWithStrategy", "GROUP_CENTER", Constants.STRING_SIG, "GROUP_BANNER", "GROUP_SIDEBAR_HOME", "GROUP_SIDEBAR_SETTINGS", "STRATEGY_NEVER", "STRATEGY_ON_SHOW", "STRATEGY_ON_PRIMARY_BUTTON_CLICK", "STRATEGY_ON_SECONDARY_BUTTON_CLICK", "STRATEGY_ON_ANY_BUTTON_CLICK", "STRATEGY_NOTHING", "STRATEGY_CLOSE", "STRATEGY_EXIT", "STRATEGY_ALWAYS", "STRATEGY_ONCE_UNTIL_INSTALL", "STRATEGY_ONCE_UNTIL_LAUNCH", "STRATEGY_TIMES_IN_PERIOD", "MMKV_KEY_COUNT", "MMKV_KEY_TIME", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "a", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "handleStateOptions", "Lcom/tencent/mmkv/MMKV;", "b", "Lcom/tencent/mmkv/MMKV;", "handleCountOptions", "c", "handleTimeOptions", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotificationDisplayHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,155:1\n603#2:156\n988#2:157\n1017#2,3:158\n1020#2,3:168\n372#3,7:161\n125#4:171\n152#4,3:172\n*S KotlinDebug\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n*L\n56#1:156\n57#1:157\n57#1:158,3\n57#1:168,3\n57#1:161,7\n58#1:171\n58#1:172,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NotificationDisplayHandler {

    @NotNull
    public static final String GROUP_BANNER = "banner";

    @NotNull
    public static final String GROUP_CENTER = "center";

    @NotNull
    public static final String GROUP_SIDEBAR_HOME = "sidebar_home";

    @NotNull
    public static final String GROUP_SIDEBAR_SETTINGS = "sidebar_settings";

    @NotNull
    public static final String MMKV_KEY_COUNT = "notification_count";

    @NotNull
    public static final String MMKV_KEY_TIME = "notification_time";

    @NotNull
    public static final String STRATEGY_ALWAYS = "always";

    @NotNull
    public static final String STRATEGY_CLOSE = "close";

    @NotNull
    public static final String STRATEGY_EXIT = "exit";

    @NotNull
    public static final String STRATEGY_NEVER = "never";

    @NotNull
    public static final String STRATEGY_NOTHING = "nothing";

    @NotNull
    public static final String STRATEGY_ONCE_UNTIL_INSTALL = "once_until_install";

    @NotNull
    public static final String STRATEGY_ONCE_UNTIL_LAUNCH = "once_until_launch";

    @NotNull
    public static final String STRATEGY_ON_ANY_BUTTON_CLICK = "on_any_button_click";

    @NotNull
    public static final String STRATEGY_ON_PRIMARY_BUTTON_CLICK = "on_primary_button_click";

    @NotNull
    public static final String STRATEGY_ON_SECONDARY_BUTTON_CLICK = "on_secondary_button_click";

    @NotNull
    public static final String STRATEGY_ON_SHOW = "on_show";

    @NotNull
    public static final String STRATEGY_TIMES_IN_PERIOD = "times_in_period";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final MMKV handleCountOptions;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final MMKV handleTimeOptions;

    @NotNull
    public static final NotificationDisplayHandler INSTANCE = new NotificationDisplayHandler();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final OptionsRepo handleStateOptions = new OptionsRepo();

    static {
        MMKV mmkvWithID = MMKV.mmkvWithID(MMKV_KEY_COUNT);
        Intrinsics.checkNotNull(mmkvWithID);
        handleCountOptions = mmkvWithID;
        MMKV mmkvWithID2 = MMKV.mmkvWithID(MMKV_KEY_TIME);
        Intrinsics.checkNotNull(mmkvWithID2);
        handleTimeOptions = mmkvWithID2;
    }

    public final void closeWithStrategy(@NotNull NotificationBasePopup popup, @NotNull String strategy) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        if (Intrinsics.areEqual(strategy, "close")) {
            popup.onClose();
            popup.dismiss();
        } else if (Intrinsics.areEqual(strategy, STRATEGY_EXIT)) {
            ContextKt.finishProcess();
        }
    }

    @NotNull
    public final List<NotificationModel> filter(@NotNull List<NotificationModel> notifications) {
        Sequence asSequence;
        Sequence filter;
        Sequence sortedWith;
        List<NotificationModel> list;
        Object first;
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        asSequence = CollectionsKt___CollectionsKt.asSequence(notifications);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<NotificationModel, Boolean>() { // from class: com.onyx.galaxy.note.message.handler.NotificationDisplayHandler$filter$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NotificationModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NotificationModelKt.canShow(it2) && !NotificationDisplayHandler.INSTANCE.isHandled(it2));
            }
        });
        sortedWith = SequencesKt___SequencesKt.sortedWith(filter, new Comparator() { // from class: com.onyx.galaxy.note.message.handler.NotificationDisplayHandler$filter$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Double.valueOf(-((NotificationModel) t).getPriority()), Double.valueOf(-((NotificationModel) t2).getPriority()));
                return compareValues;
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sortedWith) {
            String group = INSTANCE.getGroup((NotificationModel) obj);
            Object obj2 = linkedHashMap.get(group);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(group, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) ((Map.Entry) it2.next()).getValue());
            arrayList.add((NotificationModel) first);
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final String getGroup(@NotNull NotificationModel notificationModel) {
        List listOf;
        List listOf2;
        List listOf3;
        Intrinsics.checkNotNullParameter(notificationModel, "<this>");
        int type = notificationModel.getType();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(141);
        if (listOf.contains(Integer.valueOf(type))) {
            return GROUP_BANNER;
        }
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(151);
        if (listOf2.contains(Integer.valueOf(type))) {
            return GROUP_SIDEBAR_HOME;
        }
        listOf3 = CollectionsKt__CollectionsJVMKt.listOf(152);
        return listOf3.contains(Integer.valueOf(type)) ? GROUP_SIDEBAR_SETTINGS : "center";
    }

    public final void handle(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        String displayStrategy = notification.getDisplayStrategy();
        int hashCode = displayStrategy.hashCode();
        if (hashCode == -325449604) {
            if (displayStrategy.equals(STRATEGY_ONCE_UNTIL_INSTALL)) {
                handleCountOptions.putInt(notification.getUniqueId(), 1);
                return;
            }
            return;
        }
        if (hashCode != 1432839266) {
            if (hashCode == 2003099826 && displayStrategy.equals(STRATEGY_ONCE_UNTIL_LAUNCH)) {
                handleStateOptions.put(notification.getUniqueId(), Boolean.TRUE);
                return;
            }
            return;
        }
        if (displayStrategy.equals(STRATEGY_TIMES_IN_PERIOD)) {
            MMKV mmkv = handleTimeOptions;
            long j = mmkv.getLong(notification.getUniqueId(), 0L);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - j > notification.getPeriodTime()) {
                handleCountOptions.putInt(notification.getUniqueId(), 1);
                mmkv.putLong(notification.getUniqueId(), currentTimeMillis);
            } else {
                MMKV mmkv2 = handleCountOptions;
                mmkv2.putInt(notification.getUniqueId(), mmkv2.getInt(notification.getUniqueId(), 0) + 1);
            }
        }
    }

    public final void handleAlwaysType(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        if (Intrinsics.areEqual(notification.getDisplayStrategy(), STRATEGY_ALWAYS)) {
            handleCountOptions.putInt(notification.getUniqueId(), 1);
        }
    }

    public final void invalidate() {
        handleStateOptions.clear();
    }

    public final boolean isHandled(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        String displayStrategy = notification.getDisplayStrategy();
        switch (displayStrategy.hashCode()) {
            case -1414557169:
                return !displayStrategy.equals(STRATEGY_ALWAYS) || handleCountOptions.getInt(notification.getUniqueId(), 0) > 0;
            case -325449604:
                return !displayStrategy.equals(STRATEGY_ONCE_UNTIL_INSTALL) || handleCountOptions.getInt(notification.getUniqueId(), 0) > 0;
            case 1432839266:
                if (displayStrategy.equals(STRATEGY_TIMES_IN_PERIOD)) {
                    return handleCountOptions.getInt(notification.getUniqueId(), 0) >= notification.getDisplayTimes() && System.currentTimeMillis() - handleTimeOptions.getLong(notification.getUniqueId(), 0L) <= notification.getPeriodTime();
                }
                return true;
            case 2003099826:
                if (displayStrategy.equals(STRATEGY_ONCE_UNTIL_LAUNCH)) {
                    return handleStateOptions.getBoolean(notification.getUniqueId(), false);
                }
                return true;
            default:
                return true;
        }
    }

    public final void navigateWithStrategy(@NotNull String navType, @NotNull StringMap args) {
        Intrinsics.checkNotNullParameter(navType, "navType");
        Intrinsics.checkNotNullParameter(args, "args");
        Navigator.navigate$default(Navigator.INSTANCE, navType, args, null, 4, null);
    }

    public final void onPrimaryButtonClick(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        String handleStrategy = notification.getHandleStrategy();
        if (Intrinsics.areEqual(handleStrategy, STRATEGY_ON_PRIMARY_BUTTON_CLICK) ? true : Intrinsics.areEqual(handleStrategy, STRATEGY_ON_ANY_BUTTON_CLICK)) {
            handle(notification);
        }
    }

    public final void onSecondaryButtonClick(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        String handleStrategy = notification.getHandleStrategy();
        if (Intrinsics.areEqual(handleStrategy, STRATEGY_ON_SECONDARY_BUTTON_CLICK) ? true : Intrinsics.areEqual(handleStrategy, STRATEGY_ON_ANY_BUTTON_CLICK)) {
            handle(notification);
        }
    }

    public final void onShow(@NotNull NotificationModel notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        if (Intrinsics.areEqual(notification.getHandleStrategy(), STRATEGY_ON_SHOW)) {
            handle(notification);
        }
    }
}
