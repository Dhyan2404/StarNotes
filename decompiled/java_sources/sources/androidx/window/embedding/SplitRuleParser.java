package androidx.window.embedding;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import androidx.window.C1578R;
import androidx.window.core.ExperimentalWindowApi;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@ExperimentalWindowApi
@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J'\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\b\u0010\tJ \u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001a\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¨\u0006!"}, m61528d2 = {"Landroidx/window/embedding/SplitRuleParser;", "", "Landroid/content/Context;", "context", "", "staticRuleResourceId", "", "Landroidx/window/embedding/EmbeddingRule;", "parseSplitRules$window_release", "(Landroid/content/Context;I)Ljava/util/Set;", "parseSplitRules", "splitResourceId", C6998g.f39679a, "Landroid/content/res/XmlResourceParser;", "parser", "Landroidx/window/embedding/SplitPairRule;", "e", "Landroidx/window/embedding/SplitPlaceholderRule;", C6997f.f39671c, "Landroidx/window/embedding/SplitPairFilter;", "d", "Landroidx/window/embedding/ActivityRule;", "c", "Landroidx/window/embedding/ActivityFilter;", "b", "", "pkg", "", "clsSeq", "Landroid/content/ComponentName;", "a", Constants.CONSTRUCTOR_NAME, "()V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class SplitRuleParser {
    /* renamed from: a */
    public final ComponentName m6913a(String pkg, CharSequence clsSeq) {
        int indexOf$default;
        int indexOf$default2;
        if (clsSeq != null) {
            if (!(clsSeq.length() == 0)) {
                String obj = clsSeq.toString();
                if (obj.charAt(0) == '.') {
                    return new ComponentName(pkg, Intrinsics.stringPlus(pkg, obj));
                }
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) obj, '/', 0, false, 6, (Object) null);
                if (indexOf$default > 0) {
                    pkg = obj.substring(0, indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(pkg, "this as java.lang.String…ing(startIndex, endIndex)");
                    obj = obj.substring(indexOf$default + 1);
                    Intrinsics.checkNotNullExpressionValue(obj, "this as java.lang.String).substring(startIndex)");
                }
                if (!Intrinsics.areEqual(obj, "*")) {
                    indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) obj, '.', 0, false, 6, (Object) null);
                    if (indexOf$default2 < 0) {
                        return new ComponentName(pkg, pkg + '.' + obj);
                    }
                }
                return new ComponentName(pkg, obj);
            }
        }
        throw new IllegalArgumentException("Activity name must not be null");
    }

    /* renamed from: b */
    public final ActivityFilter m6914b(Context context, XmlResourceParser parser) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, C1578R.styleable.ActivityFilter, 0, 0);
        String string = obtainStyledAttributes.getString(C1578R.styleable.ActivityFilter_activityName);
        String string2 = obtainStyledAttributes.getString(C1578R.styleable.ActivityFilter_activityAction);
        String packageName = context.getApplicationContext().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        return new ActivityFilter(m6913a(packageName, string), string2);
    }

    /* renamed from: c */
    public final ActivityRule m6915c(Context context, XmlResourceParser parser) {
        Set emptySet;
        boolean z = context.getTheme().obtainStyledAttributes(parser, C1578R.styleable.ActivityRule, 0, 0).getBoolean(C1578R.styleable.ActivityRule_alwaysExpand, false);
        emptySet = SetsKt__SetsKt.emptySet();
        return new ActivityRule(emptySet, z);
    }

    /* renamed from: d */
    public final SplitPairFilter m6916d(Context context, XmlResourceParser parser) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, C1578R.styleable.SplitPairFilter, 0, 0);
        String string = obtainStyledAttributes.getString(C1578R.styleable.SplitPairFilter_primaryActivityName);
        String string2 = obtainStyledAttributes.getString(C1578R.styleable.SplitPairFilter_secondaryActivityName);
        String string3 = obtainStyledAttributes.getString(C1578R.styleable.SplitPairFilter_secondaryActivityAction);
        String packageName = context.getApplicationContext().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        return new SplitPairFilter(m6913a(packageName, string), m6913a(packageName, string2), string3);
    }

    /* renamed from: e */
    public final SplitPairRule m6917e(Context context, XmlResourceParser parser) {
        Set emptySet;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, C1578R.styleable.SplitPairRule, 0, 0);
        float f = obtainStyledAttributes.getFloat(C1578R.styleable.SplitPairRule_splitRatio, 0.0f);
        int dimension = (int) obtainStyledAttributes.getDimension(C1578R.styleable.SplitPairRule_splitMinWidth, 0.0f);
        int dimension2 = (int) obtainStyledAttributes.getDimension(C1578R.styleable.SplitPairRule_splitMinSmallestWidth, 0.0f);
        int i = obtainStyledAttributes.getInt(C1578R.styleable.SplitPairRule_splitLayoutDirection, 3);
        boolean z = obtainStyledAttributes.getBoolean(C1578R.styleable.SplitPairRule_finishPrimaryWithSecondary, false);
        boolean z2 = obtainStyledAttributes.getBoolean(C1578R.styleable.SplitPairRule_finishSecondaryWithPrimary, true);
        boolean z3 = obtainStyledAttributes.getBoolean(C1578R.styleable.SplitPairRule_clearTop, false);
        emptySet = SetsKt__SetsKt.emptySet();
        return new SplitPairRule(emptySet, z, z2, z3, dimension, dimension2, f, i);
    }

    /* renamed from: f */
    public final SplitPlaceholderRule m6918f(Context context, XmlResourceParser parser) {
        Set emptySet;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, C1578R.styleable.SplitPlaceholderRule, 0, 0);
        String string = obtainStyledAttributes.getString(C1578R.styleable.SplitPlaceholderRule_placeholderActivityName);
        float f = obtainStyledAttributes.getFloat(C1578R.styleable.SplitPlaceholderRule_splitRatio, 0.0f);
        int dimension = (int) obtainStyledAttributes.getDimension(C1578R.styleable.SplitPlaceholderRule_splitMinWidth, 0.0f);
        int dimension2 = (int) obtainStyledAttributes.getDimension(C1578R.styleable.SplitPlaceholderRule_splitMinSmallestWidth, 0.0f);
        int i = obtainStyledAttributes.getInt(C1578R.styleable.SplitPlaceholderRule_splitLayoutDirection, 3);
        String packageName = context.getApplicationContext().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        ComponentName m6913a = m6913a(packageName, string);
        emptySet = SetsKt__SetsKt.emptySet();
        Intent component = new Intent().setComponent(m6913a);
        Intrinsics.checkNotNullExpressionValue(component, "Intent().setComponent(pl…eholderActivityClassName)");
        return new SplitPlaceholderRule(emptySet, component, dimension, dimension2, f, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0049. Please report as an issue. */
    /* renamed from: g */
    public final Set<EmbeddingRule> m6919g(Context context, int splitResourceId) {
        SplitPlaceholderRule plus$window_release;
        ActivityRule plus$window_release2;
        SplitPairRule m6917e;
        try {
            XmlResourceParser xml = context.getResources().getXml(splitResourceId);
            Intrinsics.checkNotNullExpressionValue(xml, "resources.getXml(splitResourceId)");
            HashSet hashSet = new HashSet();
            int depth = xml.getDepth();
            int next = xml.next();
            ActivityRule activityRule = null;
            SplitPairRule splitPairRule = null;
            SplitPlaceholderRule splitPlaceholderRule = null;
            while (next != 1 && (next != 3 || xml.getDepth() > depth)) {
                if (xml.getEventType() != 2 || Intrinsics.areEqual("split-config", xml.getName())) {
                    next = xml.next();
                } else {
                    String name = xml.getName();
                    if (name != null) {
                        switch (name.hashCode()) {
                            case 511422343:
                                if (name.equals("ActivityFilter")) {
                                    if (activityRule != null || splitPlaceholderRule != null) {
                                        ActivityFilter m6914b = m6914b(context, xml);
                                        if (activityRule == null) {
                                            if (splitPlaceholderRule != null) {
                                                hashSet.remove(splitPlaceholderRule);
                                                plus$window_release = splitPlaceholderRule.plus$window_release(m6914b);
                                                hashSet.add(plus$window_release);
                                                splitPlaceholderRule = plus$window_release;
                                                break;
                                            }
                                        } else {
                                            hashSet.remove(activityRule);
                                            plus$window_release2 = activityRule.plus$window_release(m6914b);
                                            hashSet.add(plus$window_release2);
                                            activityRule = plus$window_release2;
                                            break;
                                        }
                                    } else {
                                        throw new IllegalArgumentException("Found orphaned ActivityFilter");
                                    }
                                }
                                break;
                            case 520447504:
                                if (name.equals("SplitPairRule")) {
                                    m6917e = m6917e(context, xml);
                                    hashSet.add(m6917e);
                                    activityRule = null;
                                    splitPlaceholderRule = null;
                                    splitPairRule = m6917e;
                                    break;
                                }
                                break;
                            case 1579230604:
                                if (name.equals("SplitPairFilter")) {
                                    if (splitPairRule == null) {
                                        throw new IllegalArgumentException("Found orphaned SplitPairFilter outside of SplitPairRule");
                                    }
                                    SplitPairFilter m6916d = m6916d(context, xml);
                                    hashSet.remove(splitPairRule);
                                    m6917e = splitPairRule.plus$window_release(m6916d);
                                    hashSet.add(m6917e);
                                    splitPairRule = m6917e;
                                    break;
                                }
                                break;
                            case 1793077963:
                                if (name.equals("ActivityRule")) {
                                    plus$window_release2 = m6915c(context, xml);
                                    hashSet.add(plus$window_release2);
                                    splitPairRule = null;
                                    splitPlaceholderRule = null;
                                    activityRule = plus$window_release2;
                                    break;
                                }
                                break;
                            case 2050988213:
                                if (name.equals("SplitPlaceholderRule")) {
                                    plus$window_release = m6918f(context, xml);
                                    hashSet.add(plus$window_release);
                                    activityRule = null;
                                    splitPairRule = null;
                                    splitPlaceholderRule = plus$window_release;
                                    break;
                                }
                                break;
                        }
                    }
                    next = xml.next();
                }
            }
            return hashSet;
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    @Nullable
    public final Set<EmbeddingRule> parseSplitRules$window_release(@NotNull Context context, int staticRuleResourceId) {
        Intrinsics.checkNotNullParameter(context, "context");
        return m6919g(context, staticRuleResourceId);
    }
}
