package net.p110sf.saxon.style;

import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;

/* loaded from: classes11.dex */
public class XSLExpose extends XSLAcceptExpose {

    /* renamed from: net.sf.saxon.style.XSLExpose$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18523a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f101968a;

        static {
            int[] iArr = new int[Visibility.values().length];
            f101968a = iArr;
            try {
                iArr[Visibility.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101968a[Visibility.ABSTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f101968a[Visibility.FINAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static boolean isCompatible(Visibility visibility, Visibility visibility2) {
        if (visibility == visibility2 || visibility == Visibility.UNDEFINED) {
            return true;
        }
        int i = C18523a.f101968a[visibility.ordinal()];
        if (i == 1) {
            return visibility2 == Visibility.PRIVATE || visibility2 == Visibility.FINAL || visibility2 == Visibility.HIDDEN;
        }
        if (i == 2) {
            return visibility2 == Visibility.HIDDEN;
        }
        if (i != 3) {
            return false;
        }
        return visibility2 == Visibility.PRIVATE || visibility2 == Visibility.HIDDEN;
    }

    public void checkCompatibility(SymbolicName symbolicName, Visibility visibility, Visibility visibility2) {
        if (isCompatible(visibility, visibility2)) {
            return;
        }
        compileError("The " + symbolicName + " is declared as " + Err.describeVisibility(visibility) + " and cannot be exposed as " + Err.describeVisibility(visibility2), "XTSE3010");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0010 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validate(net.p110sf.saxon.style.ComponentDeclaration r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLExpose.validate(net.sf.saxon.style.ComponentDeclaration):void");
    }
}
