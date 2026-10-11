package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.onyx.galaxy.note.settings.p047ui.dialog.CloudBackupDialog;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", "context", "Landroid/content/Context;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsCloudBackupFragment$cloudBackup$1 extends Lambda implements Function1<Context, Unit> {
    final /* synthetic */ SettingsCloudBackupFragment this$0;

    @SourceDebugExtension({"SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n1549#2:410\n1620#2,3:411\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n*L\n287#1:410\n287#1:411,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$cloudBackup$1$a */
    /* loaded from: classes9.dex */
    public static final class C12695a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BackupContext f61668e;

        public C12695a(BackupContext backupContext) {
            this.f61668e = backupContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends CloudStorageProvider> cloudStorageProvider) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
            BackupContext backupContext = this.f61668e;
            List<? extends CloudStorageProvider> list = cloudStorageProvider;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((CloudStorageProvider) it2.next()).getProviderType());
            }
            backupContext.setProviders(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$cloudBackup$1$b */
    /* loaded from: classes9.dex */
    public static final class C12696b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BackupContext f61669e;

        public C12696b(BackupContext backupContext) {
            this.f61669e = backupContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudBackupAction> apply(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloudBackupAction(it2, DocCollectionBundle.INSTANCE.docManagerBundle(), this.f61669e).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCloudBackupFragment$cloudBackup$1(SettingsCloudBackupFragment settingsCloudBackupFragment) {
        super(1);
        this.this$0 = settingsCloudBackupFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(SettingsCloudBackupFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50886Y0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Context context) {
        invoke2(context);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Context context) {
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(context, "context");
        BackupContext backupContext = new BackupContext(NoteConfigKt.getDocumentsArgs(), BackupFilePaths.INSTANCE.cloudAllNoteBackupFilePath());
        backupContext.setExportAllFolder(true);
        backupContext.setExportAllTag(true);
        final SettingsCloudBackupFragment settingsCloudBackupFragment = this.this$0;
        new CloudBackupDialog(context, backupContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$cloudBackup$1$dialog$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CompositeDisposable compositeDisposable2;
                compositeDisposable2 = SettingsCloudBackupFragment.this.compositeDisposable;
                compositeDisposable2.clear();
            }
        }).show();
        Observable observeOn = CloudStorageManager.INSTANCE.getOurInstance().getAuthProviders().doOnNext(new C12695a(backupContext)).observeOn(AndroidSchedulers.mainThread()).concatMap(new C12696b(backupContext)).observeOn(AndroidSchedulers.mainThread());
        final SettingsCloudBackupFragment settingsCloudBackupFragment2 = this.this$0;
        Disposable subscribe = observeOn.doOnComplete(new Action() { // from class: com.onyx.galaxy.note.settings.ui.fragment.a
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SettingsCloudBackupFragment$cloudBackup$1.invoke$lambda$1(SettingsCloudBackupFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        compositeDisposable = this.this$0.compositeDisposable;
        compositeDisposable.add(subscribe);
    }
}
