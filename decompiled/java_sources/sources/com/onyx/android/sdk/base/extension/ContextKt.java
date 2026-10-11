package com.onyx.android.sdk.base.extension;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.Process;
import android.provider.Settings;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.textclassifier.TextLinks;
import android.webkit.MimeTypeMap;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.IntentUtils;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0010\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u0006\u0010\u0006\u001a\u00020\u0003\u001a\u0006\u0010\u0007\u001a\u00020\b\u001a\u0006\u0010\t\u001a\u00020\u0003\u001a\n\u0010\n\u001a\u00020\u0003*\u00020\u000b\u001a\u000e\u0010\f\u001a\u0004\u0018\u00010\u000b*\u0004\u0018\u00010\u000b\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011\u001a\f\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000b\u001a\u001a\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015*\u00020\u000b\u001a\f\u0010\u0016\u001a\u0004\u0018\u00010\u0011*\u00020\u000b\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u000b\u001a\"\u0010\u0019\u001a\u00020\u0011*\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00112\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\u001c\u001a\n\u0010\u001d\u001a\u00020\b*\u00020\u000b\u001a\n\u0010\u001e\u001a\u00020\b*\u00020\u000b\u001a\n\u0010\u001f\u001a\u00020\b*\u00020\u000b\u001a\u0012\u0010 \u001a\u00020\b*\u00020\u000b2\u0006\u0010!\u001a\u00020\b\u001a\n\u0010\"\u001a\u00020\b*\u00020\u000b\u001a\f\u0010#\u001a\u00020\b*\u0004\u0018\u00010\u000b\u001a\f\u0010$\u001a\u00020\b*\u0004\u0018\u00010\u000b\u001a\f\u0010%\u001a\u00020\b*\u0004\u0018\u00010\u000b\u001a\u0012\u0010&\u001a\u00020\b*\u00020\u000b2\u0006\u0010'\u001a\u00020\u0011\u001a\u0012\u0010(\u001a\u00020\b*\u00020\u000b2\u0006\u0010)\u001a\u00020*\u001a\u0012\u0010+\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010,\u001a\u00020\u0011\u001a\u001e\u0010-\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010,\u001a\u00020\u00112\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0011\u001a(\u0010/\u001a\u00020\u0003*\u00020\u000b2\u0006\u00100\u001a\u00020\u00112\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u00101\u001a\u00020\b\u001a\u0016\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*030\u000e*\u00020\u000b\u001a\u001a\u00104\u001a\u00020\u0003*\u00020\u000b2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208\u001a\u001c\u00109\u001a\u0004\u0018\u00010:*\u0004\u0018\u00010\u000b2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c\u001a\u0018\u00109\u001a\u00020:*\u00020<2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c\u001a\u001c\u00109\u001a\u0004\u0018\u00010:*\u0004\u0018\u00010=2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c\u001a\n\u0010>\u001a\u00020\u0003*\u00020\u000b\u001a\u0012\u0010?\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0012\u0010@\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010,\u001a\u00020\u0011\u001a\u001e\u0010@\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010,\u001a\u00020\u00112\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0011\u001a&\u0010B\u001a\u00020\u0003*\u00020\u000b2\u0006\u00100\u001a\u00020\u00132\u0006\u0010C\u001a\u00020\u00112\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0011\u001a\u0012\u0010D\u001a\u00020\b*\u00020\u000b2\u0006\u0010E\u001a\u00020\u000f\u001a\f\u0010F\u001a\u00020G*\u0004\u0018\u00010\u000b\u001a\f\u0010H\u001a\u00020I*\u0004\u0018\u00010\u000b\u001a\u0016\u0010J\u001a\u00020\u0003*\u0004\u0018\u00010\u000b2\b\u0010K\u001a\u0004\u0018\u00010:\u001a\u0016\u0010J\u001a\u00020\u0003*\u0004\u0018\u00010<2\b\u0010K\u001a\u0004\u0018\u00010:\u001a\f\u0010L\u001a\u00020\u0003*\u0004\u0018\u00010\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006M"}, m61528d2 = {"NO_FLAG", "", "copyToClipboard", "", "any", "", "finishProcess", "isStorageManager", "", "requestStorageManager", "clearClipboard", "Landroid/content/Context;", "createNewConfigurationContext", "createProcessTextIntent", "Lio/reactivex/rxjava3/core/Observable;", "Landroid/content/Intent;", "text", "", "getClipImageData", "Landroid/net/Uri;", "getClipLinkData", "Lkotlin/Pair;", "getClipTextData", "getClipboardManager", "Landroid/content/ClipboardManager;", "getMetaData", "key", "defaultValue", "Lkotlin/Function0;", "hasOverlayPermission", "hasRedAndWritePermission", "hasStorageManagerPermission", "hasStoragePermission", "storageManagerEnable", "hasStoragePermissionByConfig", "isActivity", "isActivityAlive", "isLayoutDirectionRtl", "isPackageInstalled", MessageConst.KEY_PACKAGE_NAME, "isSupportedActivity", PrivilegedApp.f6532i, "Landroid/content/pm/ResolveInfo;", "openAudioFile", "path", "openFile", "defaultMimeType", "openWithLocalApplication", "uri", "safeCheck", "querySupportedProcessTextActivities", "", "registerReceiverCompat", EventHandlerManager.RECEIVER, "Landroid/content/BroadcastReceiver;", "filter", "Landroid/content/IntentFilter;", "registerWindowLocationChangeListener", "Landroid/view/View$OnLayoutChangeListener;", "onChanged", "Landroid/view/View;", "Landroid/view/Window;", "requestOverlayPermission", "sendProcessTextIntent", "shareFile", "mineType", "shareUri", "title", "startActivitySafely", v6l.f87196g, "toActivitySafety", "Landroid/app/Activity;", "toAppCompatActivitySafety", "Landroidx/appcompat/app/AppCompatActivity;", "unregisterWindowLocationChangeListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "updateLocaleConfiguration", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\ncom/onyx/android/sdk/base/extension/ContextKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,461:1\n1#2:462\n*E\n"})
/* loaded from: classes7.dex */
public final class ContextKt {
    public static final int NO_FLAG = 0;

    /* renamed from: com.onyx.android.sdk.base.extension.ContextKt$a */
    /* loaded from: classes7.dex */
    public static final class C7115a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f40728e;

        public C7115a(String str) {
            this.f40728e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Intent apply(@NotNull List<? extends ResolveInfo> list) {
            Object first;
            Intrinsics.checkNotNullParameter(list, "list");
            if (list.isEmpty()) {
                return IntentUtils.INSTANCE.createProcessTextIntent(this.f40728e);
            }
            IntentUtils intentUtils = IntentUtils.INSTANCE;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            return intentUtils.createProcessTextIntentFromResolveInfo((ResolveInfo) first, this.f40728e);
        }
    }

    @SourceDebugExtension({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\ncom/onyx/android/sdk/base/extension/ContextKt$querySupportedProcessTextActivities$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,461:1\n766#2:462\n857#2,2:463\n*S KotlinDebug\n*F\n+ 1 Context.kt\ncom/onyx/android/sdk/base/extension/ContextKt$querySupportedProcessTextActivities$1\n*L\n254#1:462\n254#1:463,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.base.extension.ContextKt$b */
    /* loaded from: classes7.dex */
    public static final class C7116b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f40729e;

        public C7116b(Context context) {
            this.f40729e = context;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ResolveInfo> apply(@NotNull Context it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<ResolveInfo> queryIntentActivities = this.f40729e.getPackageManager().queryIntentActivities(IntentUtils.createProcessTextIntent$default(IntentUtils.INSTANCE, null, 1, null), 0);
            Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "queryIntentActivities(...)");
            Context context = this.f40729e;
            ArrayList arrayList = new ArrayList();
            for (T t : queryIntentActivities) {
                ResolveInfo resolveInfo = (ResolveInfo) t;
                Intrinsics.checkNotNull(resolveInfo);
                if (ContextKt.isSupportedActivity(context, resolveInfo)) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.ContextKt$c */
    /* loaded from: classes7.dex */
    public static final class C7117c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f40730e;

        public C7117c(Context context) {
            this.f40730e = context;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Intent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ContextKt.startActivitySafely(this.f40730e, it2));
        }
    }

    public static final void clearClipboard(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        getClipboardManager(context).clearPrimaryClip();
    }

    public static final void copyToClipboard(@Nullable Object obj) {
        String str;
        if (obj == null || (str = obj.toString()) == null) {
            str = "";
        }
        getClipboardManager(ResManager.INSTANCE.getAppContext()).setPrimaryClip(ClipData.newPlainText("simple text", str));
    }

    @Nullable
    public static final Context createNewConfigurationContext(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Locale noteLanguageLocale = LocaleUtils.INSTANCE.getNoteLanguageLocale();
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(noteLanguageLocale);
        configuration.setLocales(new LocaleList(noteLanguageLocale));
        return context.createConfigurationContext(configuration);
    }

    @NotNull
    public static final Observable<Intent> createProcessTextIntent(@NotNull Context context, @NotNull String text) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Observable map = querySupportedProcessTextActivities(context).map(new C7115a(text));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public static final void finishProcess() {
        Process.killProcess(Process.myPid());
    }

    @Nullable
    public static final Uri getClipImageData(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        ClipData primaryClip = getClipboardManager(context).getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0 || !primaryClip.getDescription().hasMimeType("image/*")) {
            return null;
        }
        return primaryClip.getItemAt(0).getUri();
    }

    @Nullable
    public static final Pair<String, String> getClipLinkData(@NotNull Context context) {
        boolean contains$default;
        int indexOf$default;
        String str;
        String str2;
        boolean contains$default2;
        TextLinks textLinks;
        TextLinks textLinks2;
        TextLinks textLinks3;
        CharSequence text;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "<this>");
        ClipData primaryClip = getClipboardManager(context).getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        if (BuildKt.isApiLevelAbove(31)) {
            textLinks = itemAt.getTextLinks();
            if (!CollectionKt.isNonBlank(textLinks != null ? textLinks.getLinks() : null)) {
                return null;
            }
            textLinks2 = itemAt.getTextLinks();
            Intrinsics.checkNotNull(textLinks2);
            final Collection<TextLinks.TextLink> links = textLinks2.getLinks();
            Intrinsics.checkNotNullExpressionValue(links, "getLinks(...)");
            textLinks3 = itemAt.getTextLinks();
            Intrinsics.checkNotNull(textLinks3);
            text = textLinks3.getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            Iterator<T> it2 = links.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                TextLinks.TextLink textLink = (TextLinks.TextLink) obj;
                if (StringKt.isUrl(text.subSequence(textLink.getStart(), textLink.getEnd()).toString())) {
                    break;
                }
            }
            TextLinks.TextLink textLink2 = (TextLinks.TextLink) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<TextLinks.TextLink>() { // from class: com.onyx.android.sdk.base.extension.ContextKt$getClipLinkData$textLink$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TextLinks.TextLink invoke() {
                    Object first;
                    first = CollectionsKt___CollectionsKt.first(links);
                    return (TextLinks.TextLink) first;
                }
            });
            return new Pair<>(textLink2.getStart() > 0 ? text.subSequence(0, textLink2.getStart()).toString() : null, text.subSequence(textLink2.getStart(), textLink2.getEnd()).toString());
        }
        if (itemAt.getText() == null) {
            return null;
        }
        String obj2 = itemAt.getText().toString();
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) obj2, (CharSequence) CommonConstant.SCHEME_HTTP, false, 2, (Object) null);
        if (!contains$default) {
            contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) obj2, (CharSequence) CommonConstant.SCHEME_HTTPS, false, 2, (Object) null);
            if (!contains$default2) {
                return null;
            }
        }
        String lowerCase = obj2.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) lowerCase, "http", 0, false, 6, (Object) null);
        if (indexOf$default > 0) {
            str = obj2.substring(indexOf$default);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).substring(startIndex)");
        } else {
            str = null;
        }
        if (indexOf$default > 0) {
            str2 = obj2.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(str2, "this as java.lang.String…ing(startIndex, endIndex)");
        } else {
            str2 = null;
        }
        if (str != null) {
            return new Pair<>(str2, str);
        }
        return null;
    }

    @Nullable
    public static final String getClipTextData(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        ClipData primaryClip = getClipboardManager(context).getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        if (itemAt.getText() == null) {
            return null;
        }
        return itemAt.getText().toString();
    }

    @NotNull
    public static final ClipboardManager getClipboardManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        return (ClipboardManager) systemService;
    }

    @NotNull
    public static final String getMetaData(@NotNull Context context, @NotNull String key, @NotNull Function0<String> defaultValue) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
        String string = applicationInfo.metaData.getString(key, defaultValue.invoke());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public static /* synthetic */ String getMetaData$default(Context context, String str, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new Function0<String>() { // from class: com.onyx.android.sdk.base.extension.ContextKt$getMetaData$1
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return "";
                }
            };
        }
        return getMetaData(context, str, function0);
    }

    public static final boolean hasOverlayPermission(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return Settings.canDrawOverlays(context);
    }

    public static final boolean hasRedAndWritePermission(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Iterator it2 = (BuildKt.isApiLevelAbove(33) ? CollectionsKt__CollectionsKt.arrayListOf("android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO") : CollectionsKt__CollectionsKt.arrayListOf("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE")).iterator();
        boolean z = true;
        while (it2.hasNext()) {
            z = ContextCompat.checkSelfPermission(context, (String) it2.next()) == 0;
            if (!z) {
                break;
            }
        }
        return z;
    }

    public static final boolean hasStorageManagerPermission(@NotNull Context context) {
        boolean isExternalStorageManager;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (BuildKt.isApiLevelAbove(30)) {
            isExternalStorageManager = Environment.isExternalStorageManager();
            return isExternalStorageManager;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        Iterator it2 = arrayList.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            z = ContextCompat.checkSelfPermission(context, (String) it2.next()) == 0;
            if (!z) {
                break;
            }
        }
        return z;
    }

    public static final boolean hasStoragePermission(@NotNull Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return z ? hasStorageManagerPermission(context) : hasRedAndWritePermission(context);
    }

    public static final boolean hasStoragePermissionByConfig(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return hasStoragePermission(context, GlobalConfig.INSTANCE.isStorageManagerEnable());
    }

    public static final boolean isActivity(@Nullable Context context) {
        return context instanceof android.app.Activity;
    }

    public static final boolean isActivityAlive(@Nullable Context context) {
        android.app.Activity findActivity;
        if (context == null || (findActivity = Activity.INSTANCE.findActivity(context)) == null) {
            return false;
        }
        return (findActivity.isFinishing() || findActivity.isDestroyed()) ? false : true;
    }

    public static final boolean isLayoutDirectionRtl(@Nullable Context context) {
        return context != null && context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public static final boolean isPackageInstalled(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        try {
            context.getPackageManager().getApplicationInfo(packageName, 0);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static final boolean isStorageManager() {
        boolean isExternalStorageManager;
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        isExternalStorageManager = Environment.isExternalStorageManager();
        return isExternalStorageManager;
    }

    public static final boolean isSupportedActivity(@NotNull Context context, @NotNull ResolveInfo info) {
        String str;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        if (!Intrinsics.areEqual(context.getPackageName(), info.activityInfo.packageName)) {
            ActivityInfo activityInfo = info.activityInfo;
            if (!activityInfo.exported || ((str = activityInfo.permission) != null && context.checkSelfPermission(str) != 0)) {
                return false;
            }
        }
        return true;
    }

    public static final void openAudioFile(@NotNull Context context, @NotNull String path) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        openFile(context, path, FileExtensionUtils.DEFAULT_MIMETYPE_AUDIO);
    }

    public static final void openFile(@NotNull Context context, @NotNull String path, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        String fileExtension = FileUtils.INSTANCE.getFileExtension(path);
        String mimeType = FileExtensionUtils.INSTANCE.mimeType(fileExtension);
        if (mimeType == null || mimeType.length() == 0) {
            mimeType = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtension);
        }
        Debug.INSTANCE.m32035d(context.getClass(), "openFile:" + path + ",mimeType:" + mimeType, new Object[0]);
        Intent intent = new Intent("android.intent.action.VIEW");
        Uri providerUri = FileKt.toProviderUri(new File(path), context);
        if (mimeType != null) {
            str = mimeType;
        }
        Intent addFlags = intent.setDataAndType(providerUri, str).addFlags(268435456).addFlags(1);
        Intrinsics.checkNotNullExpressionValue(addFlags, "addFlags(...)");
        context.startActivity(addFlags);
    }

    public static /* synthetic */ void openFile$default(Context context, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        openFile(context, str, str2);
    }

    public static final void openWithLocalApplication(@NotNull Context context, @NotNull String uri, @Nullable String str, boolean z) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intent flags = new Intent("android.intent.action.VIEW", Uri.parse(uri)).setPackage(str).setFlags(268435456);
        Intrinsics.checkNotNullExpressionValue(flags, "setFlags(...)");
        if (!z) {
            context.startActivity(flags);
            return;
        }
        if (startActivitySafely(context, flags)) {
            return;
        }
        Debug.INSTANCE.m32044e(context.getClass(), "unsupported uri: " + uri, new Object[0]);
    }

    public static /* synthetic */ void openWithLocalApplication$default(Context context, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        openWithLocalApplication(context, str, str2, z);
    }

    @NotNull
    public static final Observable<List<ResolveInfo>> querySupportedProcessTextActivities(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Observable<List<ResolveInfo>> observeOn = Observable.just(context).observeOn(Schedulers.computation()).map(new C7116b(context)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public static final void registerReceiverCompat(@NotNull Context context, @NotNull BroadcastReceiver receiver, @NotNull IntentFilter filter) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(receiver, filter, 2);
        } else {
            context.registerReceiver(receiver, filter);
        }
    }

    @Nullable
    public static final View.OnLayoutChangeListener registerWindowLocationChangeListener(@Nullable Context context, @NotNull Function0<Unit> onChanged) {
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        android.app.Activity activity = (android.app.Activity) context;
        Window window = activity != null ? activity.getWindow() : null;
        if (window == null) {
            return null;
        }
        return registerWindowLocationChangeListener(window, onChanged);
    }

    public static final void requestOverlayPermission(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intent intent = new Intent();
        intent.setAction("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static final void requestStorageManager() {
        Context appContext = ResManager.INSTANCE.getAppContext();
        Intent intent = new Intent();
        intent.setAction("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(Uri.parse("package:" + appContext.getPackageName()));
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        appContext.startActivity(intent);
    }

    public static final void sendProcessTextIntent(@NotNull Context context, @NotNull String text) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Observable<R> map = createProcessTextIntent(context, text).map(new C7117c(context));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        RxjavaKt.subscribeWithDefault$default(map, null, null, null, 7, null);
    }

    public static final void shareFile(@NotNull Context context, @NotNull String path) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        shareFile(context, path, FileExtensionUtils.INSTANCE.mimeType(FileUtils.INSTANCE.getFileExtension(path)));
    }

    public static /* synthetic */ void shareFile$default(Context context, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        shareFile(context, str, str2);
    }

    public static final void shareUri(@NotNull Context context, @NotNull Uri uri, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(title, "title");
        Intent putExtra = new Intent("android.intent.action.SEND").setType(str).addFlags(268435456).addFlags(1).putExtra("android.intent.extra.STREAM", uri);
        Intrinsics.checkNotNullExpressionValue(putExtra, "putExtra(...)");
        context.grantUriPermission(context.getPackageName(), uri, 1);
        context.startActivity(Intent.createChooser(putExtra, title));
    }

    public static /* synthetic */ void shareUri$default(Context context, Uri uri, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        shareUri(context, uri, str, str2);
    }

    public static final boolean startActivitySafely(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            Debug.INSTANCE.m32043e(context.getClass(), "startActivitySafely fail:" + intent, e);
            return false;
        }
    }

    @NotNull
    public static final android.app.Activity toActivitySafety(@Nullable Context context) {
        if (isActivity(context)) {
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
            return (android.app.Activity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            context = ((ContextThemeWrapper) context).getBaseContext();
        }
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        return (android.app.Activity) context;
    }

    @NotNull
    public static final AppCompatActivity toAppCompatActivitySafety(@Nullable Context context) {
        android.app.Activity activitySafety = toActivitySafety(context);
        Intrinsics.checkNotNull(activitySafety, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        return (AppCompatActivity) activitySafety;
    }

    public static final void unregisterWindowLocationChangeListener(@Nullable View view, @Nullable View.OnLayoutChangeListener onLayoutChangeListener) {
        if (onLayoutChangeListener == null || view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(onLayoutChangeListener);
    }

    public static final void updateLocaleConfiguration(@Nullable Context context) {
        if (context != null) {
            Locale noteLanguageLocale = LocaleUtils.INSTANCE.getNoteLanguageLocale();
            Configuration configuration = context.getResources().getConfiguration();
            configuration.setLocale(noteLanguageLocale);
            configuration.setLocales(new LocaleList(noteLanguageLocale));
            context.createConfigurationContext(configuration);
            context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
        }
    }

    public static final void shareFile(@NotNull Context context, @NotNull String path, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        File file = new File(path);
        Uri providerUri = FileKt.toProviderUri(file, context);
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        shareUri(context, providerUri, name, str);
    }

    public static final void unregisterWindowLocationChangeListener(@Nullable Context context, @Nullable View.OnLayoutChangeListener onLayoutChangeListener) {
        android.app.Activity activity;
        Window window;
        View decorView;
        if (onLayoutChangeListener == null || (activity = (android.app.Activity) context) == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        decorView.removeOnLayoutChangeListener(onLayoutChangeListener);
    }

    @Nullable
    public static final View.OnLayoutChangeListener registerWindowLocationChangeListener(@Nullable Window window, @NotNull Function0<Unit> onChanged) {
        View decorView;
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return registerWindowLocationChangeListener(decorView, onChanged);
    }

    @NotNull
    public static final View.OnLayoutChangeListener registerWindowLocationChangeListener(@NotNull final View view, @NotNull final Function0<Unit> onChanged) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener(view, onChanged) { // from class: com.onyx.android.sdk.base.extension.ContextKt$registerWindowLocationChangeListener$listener$1

            /* renamed from: e, reason: from kotlin metadata */
            @NotNull
            public final Rect lastRect;

            /* renamed from: f */
            public final /* synthetic */ Function0<Unit> f40732f;

            {
                this.f40732f = onChanged;
                this.lastRect = ViewKt.screenVisibleRect(view);
            }

            @NotNull
            public final Rect getLastRect() {
                return this.lastRect;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@Nullable View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (v == null) {
                    return;
                }
                Rect screenVisibleRect = ViewKt.screenVisibleRect(v);
                Rect rect = this.lastRect;
                if (rect.left == screenVisibleRect.left && rect.top == screenVisibleRect.top) {
                    return;
                }
                this.f40732f.invoke();
                this.lastRect.set(screenVisibleRect);
            }
        };
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        return onLayoutChangeListener;
    }
}
