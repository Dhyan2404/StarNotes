package com.onyx.galaxy.note.utils.lifecycler;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/lifecycler/AppActivityLifecycleDispatcher;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Landroid/os/Bundle;", C1126e.f7693h, "", "onActivityCreated", "onActivityStarted", "onActivityResumed", "onActivityPaused", "onActivityStopped", "outState", "onActivitySaveInstanceState", "onActivityDestroyed", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;", C6997f.f39671c, "Ljava/util/List;", "handlerList", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAppActivityLifecycleDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppActivityLifecycleDispatcher.kt\ncom/onyx/galaxy/note/utils/lifecycler/AppActivityLifecycleDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n1855#2,2:52\n1855#2,2:54\n1855#2,2:56\n1855#2,2:58\n1855#2,2:60\n1855#2,2:62\n*S KotlinDebug\n*F\n+ 1 AppActivityLifecycleDispatcher.kt\ncom/onyx/galaxy/note/utils/lifecycler/AppActivityLifecycleDispatcher\n*L\n23#1:50,2\n27#1:52,2\n31#1:54,2\n35#1:56,2\n39#1:58,2\n43#1:60,2\n47#1:62,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AppActivityLifecycleDispatcher implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<ActivityLifecycleHandler> handlerList;

    public AppActivityLifecycleDispatcher(@NotNull Context context) {
        List<ActivityLifecycleHandler> listOf;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ActivityLifecycleHandler[]{new ShareResourceMonitor(context), new StatisticsActivityLifecycleHandler()});
        this.handlerList = listOf;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityCreated(activity, savedInstanceState);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityDestroyed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivitySaveInstanceState(activity, outState);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityStarted(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Iterator<T> it2 = this.handlerList.iterator();
        while (it2.hasNext()) {
            ((ActivityLifecycleHandler) it2.next()).onActivityStopped(activity);
        }
    }
}
