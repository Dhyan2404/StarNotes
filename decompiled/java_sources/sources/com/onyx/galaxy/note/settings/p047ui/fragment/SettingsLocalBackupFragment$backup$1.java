package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.onyx.galaxy.note.settings.p047ui.dialog.LocalBackupDialog;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "Landroid/content/Context;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsLocalBackupFragment$backup$1 extends Lambda implements Function1<Context, Unit> {
    final /* synthetic */ SettingsLocalBackupFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsLocalBackupFragment$backup$1(SettingsLocalBackupFragment settingsLocalBackupFragment) {
        super(1);
        this.this$0 = settingsLocalBackupFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(SettingsLocalBackupFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51015F0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Context context) {
        invoke2(context);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Context it2) {
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(it2, "it");
        final SettingsLocalBackupFragment settingsLocalBackupFragment = this.this$0;
        new LocalBackupDialog(it2, new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$backup$1$dialog$1
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
                compositeDisposable2 = SettingsLocalBackupFragment.this.compositeDisposable;
                compositeDisposable2.clear();
            }
        }).show();
        BackupContext backupContext = new BackupContext(NoteConfigKt.getDocumentsArgs(), BackupFilePaths.INSTANCE.localAllNoteBackupFilePath());
        backupContext.setExportAllFolder(true);
        backupContext.setExportAllTag(true);
        Observable<LocalBackupAction> build = new LocalBackupAction(DocCollectionBundle.INSTANCE.docManagerBundle(), backupContext).build();
        final SettingsLocalBackupFragment settingsLocalBackupFragment2 = this.this$0;
        Disposable subscribe = build.doOnComplete(new Action() { // from class: com.onyx.galaxy.note.settings.ui.fragment.b
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SettingsLocalBackupFragment$backup$1.invoke$lambda$1(SettingsLocalBackupFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        compositeDisposable = this.this$0.compositeDisposable;
        compositeDisposable.add(subscribe);
    }
}
