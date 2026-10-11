package com.onyx.galaxy.note.account.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.C1126e;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.view.adapter.DialogAreaCodeAdapter;
import com.onyx.galaxy.note.account.view.adapter.DialogAreaCodeHeaderAdapter;
import com.onyx.galaxy.note.databinding.DialogAreaCodeBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 <2\u00020\u0001:\u0001<B:\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00040\u0015\u0012\u0006\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b:\u0010;J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R/\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R?\u0010(\u001a&\u0012\f\u0012\n %*\u0004\u0018\u00010\u00060\u0006 %*\u0012\u0012\u000e\b\u0001\u0012\n %*\u0004\u0018\u00010\u00060\u00060$0$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010 \u001a\u0004\b\u0012\u0010'R \u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160)0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010 \u001a\u0004\b7\u00108¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "code", "updateAreaCode", "", "d", C6997f.f39671c, "namesId", "codesId", FirebaseAnalytics.Param.INDEX, "a", C6998g.f39679a, "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lkotlin/Function1;", "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "Lkotlin/ParameterName;", "name", "model", "Lkotlin/jvm/functions/Function1;", "selectFunc", Constants.STRING_SIG, "currCode", "Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;", C6999h.f39688c, "Lkotlin/Lazy;", "c", "()Lcom/onyx/galaxy/note/databinding/DialogAreaCodeBinding;", "binding", "", "kotlin.jvm.PlatformType", "i", "()[Ljava/lang/String;", "tabTitles", "", "j", "Ljava/util/List;", "datas", "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;", C4921e.f26537n, "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;", "areaCodeAdapter", "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;", "l", "Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeHeaderAdapter;", "headerAdapter", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "m", "b", "()Lcom/chad/library/adapter4/QuickAdapterHelper;", "adapterHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAreaCodeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,152:1\n350#2,7:153\n13374#3,3:160\n13374#3,3:163\n*S KotlinDebug\n*F\n+ 1 AreaCodeDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog\n*L\n80#1:153,7\n116#1:160,3\n125#1:163,3\n*E\n"})
/* loaded from: classes17.dex */
public final class AreaCodeDialog extends Dialog {

    /* renamed from: n */
    public static final int f53527n = 0;

    /* renamed from: o */
    public static final int f53528o = 1;

    /* renamed from: p */
    public static final int f53529p = 2;

    /* renamed from: q */
    public static final int f53530q = 3;

    /* renamed from: r */
    public static final int f53531r = 4;

    /* renamed from: s */
    public static final int f53532s = 5;

    /* renamed from: t */
    public static final int f53533t = 6;

    /* renamed from: u */
    @NotNull
    public static final List<Integer> f53534u;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function1<AreaCodeModel, Unit> selectFunc;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String currCode;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy tabTitles;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<List<AreaCodeModel>> datas;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final DialogAreaCodeAdapter areaCodeAdapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final DialogAreaCodeHeaderAdapter headerAdapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapterHelper;

    static {
        List<Integer> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(0, 1, 2, 3, 4, 5, 6);
        f53534u = mutableListOf;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AreaCodeDialog(@NotNull Context context, @NotNull Function1<? super AreaCodeModel, Unit> selectFunc, @NotNull String currCode) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(selectFunc, "selectFunc");
        Intrinsics.checkNotNullParameter(currCode, "currCode");
        this.context = context;
        this.selectFunc = selectFunc;
        this.currCode = currCode;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogAreaCodeBinding>() { // from class: com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogAreaCodeBinding invoke() {
                Context context2;
                context2 = AreaCodeDialog.this.context;
                return DialogAreaCodeBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog$tabTitles$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String[] invoke() {
                Context context2;
                context2 = AreaCodeDialog.this.context;
                return context2.getResources().getStringArray(C10651R.array.dialog_area_code_tabs);
            }
        });
        this.tabTitles = lazy2;
        this.datas = new ArrayList();
        this.areaCodeAdapter = new DialogAreaCodeAdapter(selectFunc, this.currCode);
        this.headerAdapter = new DialogAreaCodeHeaderAdapter();
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<QuickAdapterHelper>() { // from class: com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog$adapterHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final QuickAdapterHelper invoke() {
                DialogAreaCodeAdapter dialogAreaCodeAdapter;
                DialogAreaCodeHeaderAdapter dialogAreaCodeHeaderAdapter;
                dialogAreaCodeAdapter = AreaCodeDialog.this.areaCodeAdapter;
                QuickAdapterHelper build = new QuickAdapterHelper.Builder(dialogAreaCodeAdapter).build();
                dialogAreaCodeHeaderAdapter = AreaCodeDialog.this.headerAdapter;
                build.addBeforeAdapter(0, dialogAreaCodeHeaderAdapter);
                return build;
            }
        });
        this.adapterHelper = lazy3;
    }

    /* renamed from: a */
    public final void m41999a(int namesId, int codesId, int index) {
        String[] stringArray = this.context.getResources().getStringArray(namesId);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        String[] stringArray2 = this.context.getResources().getStringArray(codesId);
        Intrinsics.checkNotNullExpressionValue(stringArray2, "getStringArray(...)");
        if (stringArray.length != stringArray2.length) {
            throw new Exception("names size is not matched codes");
        }
        this.datas.add(new ArrayList());
        int length = stringArray.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str = stringArray[i];
            int i3 = i2 + 1;
            List<AreaCodeModel> list = this.datas.get(index);
            Intrinsics.checkNotNull(str);
            String str2 = stringArray2[i2];
            Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
            list.add(new AreaCodeModel(str, str2));
            i++;
            i2 = i3;
        }
    }

    /* renamed from: b */
    public final QuickAdapterHelper m42000b() {
        return (QuickAdapterHelper) this.adapterHelper.getValue();
    }

    /* renamed from: c */
    public final DialogAreaCodeBinding m42001c() {
        return (DialogAreaCodeBinding) this.binding.getValue();
    }

    /* renamed from: d */
    public final int m42002d() {
        Iterator<List<AreaCodeModel>> it2 = this.datas.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (CollectionKt.contains(it2.next(), new Function1<AreaCodeModel, Boolean>() { // from class: com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog$getDefaultTab$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull AreaCodeModel it3) {
                    String str;
                    Intrinsics.checkNotNullParameter(it3, "it");
                    String code = it3.getCode();
                    str = AreaCodeDialog.this.currCode;
                    return Boolean.valueOf(Intrinsics.areEqual(code, str));
                }
            })) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: e */
    public final String[] m42003e() {
        return (String[]) this.tabTitles.getValue();
    }

    /* renamed from: f */
    public final void m42004f() {
        m41999a(C10651R.array.area_code_asia_name, C10651R.array.area_code_asia_code, 0);
        m41999a(C10651R.array.area_code_europe_name, C10651R.array.area_code_europe_code, 1);
        m41999a(C10651R.array.area_code_africa_name, C10651R.array.area_code_africa_code, 2);
        m41999a(C10651R.array.area_code_north_america_name, C10651R.array.area_code_north_america_code, 3);
        m41999a(C10651R.array.area_code_central_america_name, C10651R.array.area_code_central_america_code, 4);
        m41999a(C10651R.array.area_code_south_america_name, C10651R.array.area_code_south_america_code, 5);
        m41999a(C10651R.array.area_code_oceania_name, C10651R.array.area_code_oceania_code, 6);
    }

    /* renamed from: g */
    public final void m42005g() {
        int i = 0;
        this.areaCodeAdapter.submitList(this.datas.get(0));
        m42001c().f56321rv.setAdapter(m42000b().getMAdapter());
        String[] m42003e = m42003e();
        Intrinsics.checkNotNullExpressionValue(m42003e, "<get-tabTitles>(...)");
        int length = m42003e.length;
        int i2 = 0;
        while (i < length) {
            String str = m42003e[i];
            TintTabLayoutView tintTabLayoutView = m42001c().scrollableTabLayout;
            TabLayout.Tab newTab = m42001c().scrollableTabLayout.newTab();
            newTab.setText(str);
            newTab.setTag(f53534u.get(i2));
            tintTabLayoutView.addTab(newTab);
            i++;
            i2++;
        }
        m42001c().scrollableTabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog$initView$2
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(@NotNull TabLayout.Tab tab) {
                DialogAreaCodeAdapter dialogAreaCodeAdapter;
                List list;
                Intrinsics.checkNotNullParameter(tab, "tab");
                Object tag = tab.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
                int intValue = ((Integer) tag).intValue();
                dialogAreaCodeAdapter = AreaCodeDialog.this.areaCodeAdapter;
                list = AreaCodeDialog.this.datas;
                dialogAreaCodeAdapter.submitList((List) list.get(intValue));
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }
        });
        int m42002d = m42002d();
        TintTabLayoutView scrollableTabLayout = m42001c().scrollableTabLayout;
        Intrinsics.checkNotNullExpressionValue(scrollableTabLayout, "scrollableTabLayout");
        TabLayoutKt.selectTab(scrollableTabLayout, m42002d);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063331, this, savedInstanceState);
    }

    public final void updateAreaCode(@NotNull String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.currCode = code;
        this.areaCodeAdapter.updateAreaCode(code);
    }
}
