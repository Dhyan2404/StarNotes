package com.onyx.galaxy.note.category.p044ui;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionManager;
import com.google.android.material.transition.MaterialFade;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$hideGoTopRunnable$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n256#2,2:851\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$hideGoTopRunnable$2\n*L\n115#1:851,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FragmentNoteFolderRoot$hideGoTopRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ FragmentNoteFolderRoot this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNoteFolderRoot$hideGoTopRunnable$2(FragmentNoteFolderRoot fragmentNoteFolderRoot) {
        super(0);
        this.this$0 = fragmentNoteFolderRoot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(FragmentNoteFolderRoot this$0) {
        FragmentNoteFolderRootBinding m43122z0;
        FragmentNoteFolderRootBinding m43122z02;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43122z0 = this$0.m43122z0();
        View root = m43122z0.getRoot();
        Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.view.ViewGroup");
        TransitionManager.beginDelayedTransition((ViewGroup) root, new MaterialFade());
        m43122z02 = this$0.m43122z0();
        ShadowLayout slGoTop = m43122z02.slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
        slGoTop.setVisibility(8);
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Runnable invoke() {
        final FragmentNoteFolderRoot fragmentNoteFolderRoot = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.a
            @Override // java.lang.Runnable
            public final void run() {
                FragmentNoteFolderRoot$hideGoTopRunnable$2.invoke$lambda$0(FragmentNoteFolderRoot.this);
            }
        };
    }
}
