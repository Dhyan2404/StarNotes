package com.onyx.galaxy.note.category.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewGroupKt;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.utils.TagColorUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aB\u001b\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u0019\u0010\u001dB#\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001fB+\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u0005\u0012\u0006\u0010 \u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010!J \u0010\b\u001a\u00020\u00072\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00030\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0005H\u0003J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u0016\u0010\u0016\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;", "Landroid/widget/LinearLayout;", "", "Lkotlin/Pair;", "", "", "nameColorPairList", "", "initTags", "Landroid/view/View;", "tagView", "", "c", "text", gon.f71255H, "d", "isFirst", "b", "count", "a", "e", "I", "horizontalMargin", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTagsLinearLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagsLinearLayout.kt\ncom/onyx/galaxy/note/category/view/TagsLinearLayout\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,134:1\n1313#2:135\n1314#2:138\n338#3:136\n356#3:137\n199#4,2:139\n*S KotlinDebug\n*F\n+ 1 TagsLinearLayout.kt\ncom/onyx/galaxy/note/category/view/TagsLinearLayout\n*L\n89#1:135\n89#1:138\n91#1:136\n91#1:137\n121#1:139,2\n*E\n"})
/* loaded from: classes9.dex */
public final class TagsLinearLayout extends LinearLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public int horizontalMargin;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TagsLinearLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final void m43953a(int count) {
        String sb;
        if (count > 99) {
            sb = "99+";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(count);
            sb2.append(PhoneNumberUtil.f36455s);
            sb = sb2.toString();
        }
        m43954b(m43956d(sb, ThemeUtils.getColorById(C7996R.color.theme_background_color_02)), false);
    }

    /* renamed from: b */
    public final void m43954b(View tagView, boolean isFirst) {
        addView(tagView);
        ViewGroup.LayoutParams layoutParams = tagView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        ((LinearLayout.LayoutParams) layoutParams).setMargins(isFirst ? 0 : this.horizontalMargin, 0, this.horizontalMargin, 0);
    }

    /* renamed from: c */
    public final boolean m43955c(View tagView) {
        int measuredWidth = (getMeasuredWidth() - (this.horizontalMargin * 2)) - ResManager.INSTANCE.getDimens(C7384R.dimen.dp_34);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        for (View view : ViewGroupKt.getChildren(this)) {
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth2 = view.getMeasuredWidth();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            int i = measuredWidth2 + (marginLayoutParams != null ? marginLayoutParams.leftMargin : 0);
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            measuredWidth -= i + (marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0);
        }
        tagView.measure(makeMeasureSpec, makeMeasureSpec2);
        return measuredWidth - tagView.getMeasuredWidth() > 0;
    }

    @SuppressLint({"InflateParams"})
    /* renamed from: d */
    public final View m43956d(String text, int backgroundColor) {
        View inflate = LayoutInflater.from(getContext()).inflate(C10651R.layout.tags_linearlayout_child_layout, (ViewGroup) this, false);
        Intrinsics.checkNotNull(inflate, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) inflate;
        textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_02));
        textView.setText(text);
        textView.setBackground(TagColorUtils.INSTANCE.generateTagDrawable(backgroundColor));
        return textView;
    }

    public final void initTags(@NotNull List<Pair<String, Integer>> nameColorPairList) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(nameColorPairList, "nameColorPairList");
        removeAllViews();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(nameColorPairList);
        if (lastIndex < 0) {
            return;
        }
        int i = 0;
        while (true) {
            Pair<String, Integer> pair = nameColorPairList.get(i);
            View m43956d = m43956d(pair.getFirst(), pair.getSecond().intValue());
            if (!m43955c(m43956d)) {
                int size = nameColorPairList.size() - getChildCount();
                if (size > 0) {
                    m43953a(size);
                    return;
                }
                return;
            }
            m43954b(m43956d, i == 0);
            if (i == lastIndex) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TagsLinearLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TagsLinearLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagsLinearLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.TagsLinearLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.horizontalMargin = (int) obtainStyledAttributes.getDimension(C10651R.styleable.TagsLinearLayout_tagHorizontalMargin, 0.0f);
        obtainStyledAttributes.recycle();
    }
}
