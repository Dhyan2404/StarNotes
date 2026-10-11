package com.onyx.galaxy.note.category.p044ui;

import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentContainerView;
import com.onyx.android.sdk.base.extension.DrawerLayoutKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.galaxy.note.databinding.ActivityNoteListBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Boolean;)V"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListActivity$initObserver$4 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ NoteListActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListActivity$initObserver$4(NoteListActivity noteListActivity) {
        super(1);
        this.this$0 = noteListActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteListActivity this$0, Boolean bool) {
        ActivityNoteListBinding m43179M;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43179M = this$0.m43179M();
        DrawerLayout drawerLayout = m43179M.drawerLayout;
        Intrinsics.checkNotNullExpressionValue(drawerLayout, "drawerLayout");
        Intrinsics.checkNotNull(bool);
        DrawerLayoutKt.openOrClose$default(drawerLayout, bool.booleanValue(), false, 2, null);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke2(bool);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final Boolean bool) {
        ActivityNoteListBinding m43179M;
        m43179M = this.this$0.m43179M();
        FragmentContainerView fragmentContainerView = m43179M.drawerMenu;
        final NoteListActivity noteListActivity = this.this$0;
        fragmentContainerView.post(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.k
            @Override // java.lang.Runnable
            public final void run() {
                NoteListActivity$initObserver$4.invoke$lambda$0(NoteListActivity.this, bool);
            }
        });
    }
}
