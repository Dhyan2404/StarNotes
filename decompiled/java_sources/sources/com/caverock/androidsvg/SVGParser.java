package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.util.Log;
import android.util.Xml;
import com.bumptech.glide.load.engine.GlideException;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.kni;
import com.sunia.HTREnginev2.t5k;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.poi.ss.util.CellUtil;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class SVGParser {

    /* renamed from: j */
    public static final String f16038j = "SVGParser";

    /* renamed from: k */
    public static final String f16039k = "http://www.w3.org/2000/svg";

    /* renamed from: l */
    public static final String f16040l = "http://www.w3.org/1999/xlink";

    /* renamed from: m */
    public static final String f16041m = "http://www.w3.org/TR/SVG11/feature#";

    /* renamed from: n */
    public static final String f16042n = "xml-stylesheet";

    /* renamed from: o */
    public static final String f16043o = "type";

    /* renamed from: p */
    public static final String f16044p = "alternate";

    /* renamed from: q */
    public static final String f16045q = "href";

    /* renamed from: r */
    public static final String f16046r = "media";

    /* renamed from: s */
    public static final String f16047s = "all";

    /* renamed from: t */
    public static final String f16048t = "no";

    /* renamed from: u */
    public static final int f16049u = 4096;

    /* renamed from: v */
    public static final String f16050v = "none";

    /* renamed from: w */
    public static final String f16051w = "currentColor";

    /* renamed from: x */
    public static final String f16052x = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|";

    /* renamed from: y */
    public static final String f16053y = "|visible|hidden|collapse|";

    /* renamed from: d */
    public int f16057d;

    /* renamed from: a */
    public SVG f16054a = null;

    /* renamed from: b */
    public SVG.InterfaceC2091h0 f16055b = null;

    /* renamed from: c */
    public boolean f16056c = false;

    /* renamed from: e */
    public boolean f16058e = false;

    /* renamed from: f */
    public SVGElem f16059f = null;

    /* renamed from: g */
    public StringBuilder f16060g = null;

    /* renamed from: h */
    public boolean f16061h = false;

    /* renamed from: i */
    public StringBuilder f16062i = null;

    /* loaded from: classes3.dex */
    public enum SVGAttr {
        CLASS,
        clip,
        clip_path,
        clipPathUnits,
        clip_rule,
        color,
        cx,
        cy,
        direction,
        dx,
        dy,
        fx,
        fy,
        d,
        display,
        fill,
        fill_rule,
        fill_opacity,
        font,
        font_family,
        font_size,
        font_weight,
        font_style,
        gradientTransform,
        gradientUnits,
        height,
        href,
        image_rendering,
        marker,
        marker_start,
        marker_mid,
        marker_end,
        markerHeight,
        markerUnits,
        markerWidth,
        mask,
        maskContentUnits,
        maskUnits,
        media,
        offset,
        opacity,
        orient,
        overflow,
        pathLength,
        patternContentUnits,
        patternTransform,
        patternUnits,
        points,
        preserveAspectRatio,
        r,
        refX,
        refY,
        requiredFeatures,
        requiredExtensions,
        requiredFormats,
        requiredFonts,
        rx,
        ry,
        solid_color,
        solid_opacity,
        spreadMethod,
        startOffset,
        stop_color,
        stop_opacity,
        stroke,
        stroke_dasharray,
        stroke_dashoffset,
        stroke_linecap,
        stroke_linejoin,
        stroke_miterlimit,
        stroke_opacity,
        stroke_width,
        style,
        systemLanguage,
        text_anchor,
        text_decoration,
        transform,
        type,
        vector_effect,
        version,
        viewBox,
        width,
        x,
        y,
        x1,
        y1,
        x2,
        y2,
        viewport_fill,
        viewport_fill_opacity,
        visibility,
        UNSUPPORTED;

        private static final Map<String, SVGAttr> cache = new HashMap();

        static {
            for (SVGAttr sVGAttr : values()) {
                if (sVGAttr == CLASS) {
                    cache.put("class", sVGAttr);
                } else if (sVGAttr != UNSUPPORTED) {
                    cache.put(sVGAttr.name().replace(NameUtil.USCORE, '-'), sVGAttr);
                }
            }
        }

        public static SVGAttr fromString(String str) {
            SVGAttr sVGAttr = cache.get(str);
            return sVGAttr != null ? sVGAttr : UNSUPPORTED;
        }
    }

    /* loaded from: classes3.dex */
    public enum SVGElem {
        svg,
        a,
        circle,
        clipPath,
        defs,
        desc,
        ellipse,
        g,
        image,
        line,
        linearGradient,
        marker,
        mask,
        path,
        pattern,
        polygon,
        polyline,
        radialGradient,
        rect,
        solidColor,
        stop,
        style,
        SWITCH,
        symbol,
        text,
        textPath,
        title,
        tref,
        tspan,
        use,
        view,
        UNSUPPORTED;

        private static final Map<String, SVGElem> cache = new HashMap();

        static {
            for (SVGElem sVGElem : values()) {
                if (sVGElem == SWITCH) {
                    cache.put("switch", sVGElem);
                } else if (sVGElem != UNSUPPORTED) {
                    cache.put(sVGElem.name(), sVGElem);
                }
            }
        }

        public static SVGElem fromString(String str) {
            SVGElem sVGElem = cache.get(str);
            return sVGElem != null ? sVGElem : UNSUPPORTED;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C2131a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16081a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f16082b;

        static {
            int[] iArr = new int[SVGAttr.values().length];
            f16082b = iArr;
            try {
                iArr[SVGAttr.x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16082b[SVGAttr.y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16082b[SVGAttr.width.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16082b[SVGAttr.height.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16082b[SVGAttr.version.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16082b[SVGAttr.href.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16082b[SVGAttr.preserveAspectRatio.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16082b[SVGAttr.d.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16082b[SVGAttr.pathLength.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16082b[SVGAttr.rx.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16082b[SVGAttr.ry.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16082b[SVGAttr.cx.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16082b[SVGAttr.cy.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16082b[SVGAttr.r.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16082b[SVGAttr.x1.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16082b[SVGAttr.y1.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16082b[SVGAttr.x2.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16082b[SVGAttr.y2.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f16082b[SVGAttr.dx.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f16082b[SVGAttr.dy.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f16082b[SVGAttr.requiredFeatures.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f16082b[SVGAttr.requiredExtensions.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f16082b[SVGAttr.systemLanguage.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f16082b[SVGAttr.requiredFormats.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f16082b[SVGAttr.requiredFonts.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f16082b[SVGAttr.refX.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f16082b[SVGAttr.refY.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f16082b[SVGAttr.markerWidth.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f16082b[SVGAttr.markerHeight.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f16082b[SVGAttr.markerUnits.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f16082b[SVGAttr.orient.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f16082b[SVGAttr.gradientUnits.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f16082b[SVGAttr.gradientTransform.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f16082b[SVGAttr.spreadMethod.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f16082b[SVGAttr.fx.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f16082b[SVGAttr.fy.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f16082b[SVGAttr.offset.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f16082b[SVGAttr.clipPathUnits.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f16082b[SVGAttr.startOffset.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f16082b[SVGAttr.patternUnits.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f16082b[SVGAttr.patternContentUnits.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f16082b[SVGAttr.patternTransform.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f16082b[SVGAttr.maskUnits.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f16082b[SVGAttr.maskContentUnits.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f16082b[SVGAttr.style.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f16082b[SVGAttr.CLASS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f16082b[SVGAttr.fill.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f16082b[SVGAttr.fill_rule.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f16082b[SVGAttr.fill_opacity.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f16082b[SVGAttr.stroke.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f16082b[SVGAttr.stroke_opacity.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f16082b[SVGAttr.stroke_width.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f16082b[SVGAttr.stroke_linecap.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f16082b[SVGAttr.stroke_linejoin.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f16082b[SVGAttr.stroke_miterlimit.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f16082b[SVGAttr.stroke_dasharray.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f16082b[SVGAttr.stroke_dashoffset.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f16082b[SVGAttr.opacity.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f16082b[SVGAttr.color.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f16082b[SVGAttr.font.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f16082b[SVGAttr.font_family.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f16082b[SVGAttr.font_size.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f16082b[SVGAttr.font_weight.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f16082b[SVGAttr.font_style.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f16082b[SVGAttr.text_decoration.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                f16082b[SVGAttr.direction.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                f16082b[SVGAttr.text_anchor.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                f16082b[SVGAttr.overflow.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                f16082b[SVGAttr.marker.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                f16082b[SVGAttr.marker_start.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                f16082b[SVGAttr.marker_mid.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                f16082b[SVGAttr.marker_end.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                f16082b[SVGAttr.display.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                f16082b[SVGAttr.visibility.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                f16082b[SVGAttr.stop_color.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                f16082b[SVGAttr.stop_opacity.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                f16082b[SVGAttr.clip.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                f16082b[SVGAttr.clip_path.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                f16082b[SVGAttr.clip_rule.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                f16082b[SVGAttr.mask.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                f16082b[SVGAttr.solid_color.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                f16082b[SVGAttr.solid_opacity.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                f16082b[SVGAttr.viewport_fill.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                f16082b[SVGAttr.viewport_fill_opacity.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                f16082b[SVGAttr.vector_effect.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                f16082b[SVGAttr.image_rendering.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                f16082b[SVGAttr.viewBox.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                f16082b[SVGAttr.type.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                f16082b[SVGAttr.media.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            int[] iArr2 = new int[SVGElem.values().length];
            f16081a = iArr2;
            try {
                iArr2[SVGElem.svg.ordinal()] = 1;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                f16081a[SVGElem.g.ordinal()] = 2;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                f16081a[SVGElem.a.ordinal()] = 3;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                f16081a[SVGElem.defs.ordinal()] = 4;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                f16081a[SVGElem.use.ordinal()] = 5;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                f16081a[SVGElem.path.ordinal()] = 6;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                f16081a[SVGElem.rect.ordinal()] = 7;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                f16081a[SVGElem.circle.ordinal()] = 8;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                f16081a[SVGElem.ellipse.ordinal()] = 9;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                f16081a[SVGElem.line.ordinal()] = 10;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                f16081a[SVGElem.polyline.ordinal()] = 11;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                f16081a[SVGElem.polygon.ordinal()] = 12;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                f16081a[SVGElem.text.ordinal()] = 13;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                f16081a[SVGElem.tspan.ordinal()] = 14;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                f16081a[SVGElem.tref.ordinal()] = 15;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                f16081a[SVGElem.SWITCH.ordinal()] = 16;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                f16081a[SVGElem.symbol.ordinal()] = 17;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                f16081a[SVGElem.marker.ordinal()] = 18;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                f16081a[SVGElem.linearGradient.ordinal()] = 19;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                f16081a[SVGElem.radialGradient.ordinal()] = 20;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                f16081a[SVGElem.stop.ordinal()] = 21;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                f16081a[SVGElem.title.ordinal()] = 22;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                f16081a[SVGElem.desc.ordinal()] = 23;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                f16081a[SVGElem.clipPath.ordinal()] = 24;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                f16081a[SVGElem.textPath.ordinal()] = 25;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                f16081a[SVGElem.pattern.ordinal()] = 26;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                f16081a[SVGElem.image.ordinal()] = 27;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                f16081a[SVGElem.view.ordinal()] = 28;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                f16081a[SVGElem.mask.ordinal()] = 29;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                f16081a[SVGElem.style.ordinal()] = 30;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                f16081a[SVGElem.solidColor.ordinal()] = 31;
            } catch (NoSuchFieldError unused120) {
            }
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$b */
    /* loaded from: classes3.dex */
    public static class C2132b {

        /* renamed from: a */
        public static final Map<String, PreserveAspectRatio.Alignment> f16083a;

        static {
            HashMap hashMap = new HashMap(10);
            f16083a = hashMap;
            hashMap.put("none", PreserveAspectRatio.Alignment.none);
            hashMap.put("xMinYMin", PreserveAspectRatio.Alignment.xMinYMin);
            hashMap.put("xMidYMin", PreserveAspectRatio.Alignment.xMidYMin);
            hashMap.put("xMaxYMin", PreserveAspectRatio.Alignment.xMaxYMin);
            hashMap.put("xMinYMid", PreserveAspectRatio.Alignment.xMinYMid);
            hashMap.put("xMidYMid", PreserveAspectRatio.Alignment.xMidYMid);
            hashMap.put("xMaxYMid", PreserveAspectRatio.Alignment.xMaxYMid);
            hashMap.put("xMinYMax", PreserveAspectRatio.Alignment.xMinYMax);
            hashMap.put("xMidYMax", PreserveAspectRatio.Alignment.xMidYMax);
            hashMap.put("xMaxYMax", PreserveAspectRatio.Alignment.xMaxYMax);
        }

        /* renamed from: a */
        public static PreserveAspectRatio.Alignment m9524a(String str) {
            return f16083a.get(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$c */
    /* loaded from: classes3.dex */
    public static class C2133c {

        /* renamed from: a */
        public static final Map<String, Integer> f16084a;

        static {
            HashMap hashMap = new HashMap(47);
            f16084a = hashMap;
            hashMap.put("aliceblue", -984833);
            hashMap.put("antiquewhite", -332841);
            hashMap.put("aqua", -16711681);
            hashMap.put("aquamarine", -8388652);
            hashMap.put("azure", -983041);
            hashMap.put("beige", -657956);
            hashMap.put("bisque", -6972);
            hashMap.put("black", -16777216);
            hashMap.put("blanchedalmond", -5171);
            hashMap.put("blue", -16776961);
            hashMap.put("blueviolet", -7722014);
            hashMap.put("brown", -5952982);
            hashMap.put("burlywood", -2180985);
            hashMap.put("cadetblue", -10510688);
            hashMap.put("chartreuse", -8388864);
            hashMap.put("chocolate", -2987746);
            hashMap.put("coral", -32944);
            hashMap.put("cornflowerblue", -10185235);
            hashMap.put("cornsilk", -1828);
            hashMap.put("crimson", -2354116);
            hashMap.put("cyan", -16711681);
            hashMap.put("darkblue", -16777077);
            hashMap.put("darkcyan", -16741493);
            hashMap.put("darkgoldenrod", -4684277);
            hashMap.put("darkgray", -5658199);
            hashMap.put("darkgreen", -16751616);
            hashMap.put("darkgrey", -5658199);
            hashMap.put("darkkhaki", -4343957);
            hashMap.put("darkmagenta", -7667573);
            hashMap.put("darkolivegreen", -11179217);
            hashMap.put("darkorange", -29696);
            hashMap.put("darkorchid", -6737204);
            hashMap.put("darkred", -7667712);
            hashMap.put("darksalmon", -1468806);
            hashMap.put("darkseagreen", -7357297);
            hashMap.put("darkslateblue", -12042869);
            hashMap.put("darkslategray", -13676721);
            hashMap.put("darkslategrey", -13676721);
            hashMap.put("darkturquoise", -16724271);
            hashMap.put("darkviolet", -7077677);
            hashMap.put("deeppink", -60269);
            hashMap.put("deepskyblue", -16728065);
            hashMap.put("dimgray", -9868951);
            hashMap.put("dimgrey", -9868951);
            hashMap.put("dodgerblue", -14774017);
            hashMap.put("firebrick", -5103070);
            hashMap.put("floralwhite", -1296);
            hashMap.put("forestgreen", -14513374);
            hashMap.put("fuchsia", -65281);
            hashMap.put("gainsboro", -2302756);
            hashMap.put("ghostwhite", -460545);
            hashMap.put("gold", -10496);
            hashMap.put("goldenrod", -2448096);
            hashMap.put("gray", -8355712);
            hashMap.put("green", -16744448);
            hashMap.put("greenyellow", -5374161);
            hashMap.put("grey", -8355712);
            hashMap.put("honeydew", -983056);
            hashMap.put("hotpink", -38476);
            hashMap.put("indianred", -3318692);
            hashMap.put("indigo", -11861886);
            hashMap.put("ivory", -16);
            hashMap.put("khaki", -989556);
            hashMap.put("lavender", -1644806);
            hashMap.put("lavenderblush", -3851);
            hashMap.put("lawngreen", -8586240);
            hashMap.put("lemonchiffon", -1331);
            hashMap.put("lightblue", -5383962);
            hashMap.put("lightcoral", -1015680);
            hashMap.put("lightcyan", -2031617);
            hashMap.put("lightgoldenrodyellow", -329006);
            hashMap.put("lightgray", -2894893);
            hashMap.put("lightgreen", -7278960);
            hashMap.put("lightgrey", -2894893);
            hashMap.put("lightpink", -18751);
            hashMap.put("lightsalmon", -24454);
            hashMap.put("lightseagreen", -14634326);
            hashMap.put("lightskyblue", -7876870);
            hashMap.put("lightslategray", -8943463);
            hashMap.put("lightslategrey", -8943463);
            hashMap.put("lightsteelblue", -5192482);
            hashMap.put("lightyellow", -32);
            hashMap.put("lime", -16711936);
            hashMap.put("limegreen", -13447886);
            hashMap.put("linen", -331546);
            hashMap.put("magenta", -65281);
            hashMap.put("maroon", -8388608);
            hashMap.put("mediumaquamarine", -10039894);
            hashMap.put("mediumblue", -16777011);
            hashMap.put("mediumorchid", -4565549);
            hashMap.put("mediumpurple", -7114533);
            hashMap.put("mediumseagreen", -12799119);
            hashMap.put("mediumslateblue", -8689426);
            hashMap.put("mediumspringgreen", -16713062);
            hashMap.put("mediumturquoise", -12004916);
            hashMap.put("mediumvioletred", -3730043);
            hashMap.put("midnightblue", -15132304);
            hashMap.put("mintcream", -655366);
            hashMap.put("mistyrose", -6943);
            hashMap.put("moccasin", -6987);
            hashMap.put("navajowhite", -8531);
            hashMap.put("navy", -16777088);
            hashMap.put("oldlace", -133658);
            hashMap.put("olive", -8355840);
            hashMap.put("olivedrab", -9728477);
            hashMap.put("orange", -23296);
            hashMap.put("orangered", -47872);
            hashMap.put("orchid", -2461482);
            hashMap.put("palegoldenrod", -1120086);
            hashMap.put("palegreen", -6751336);
            hashMap.put("paleturquoise", -5247250);
            hashMap.put("palevioletred", -2396013);
            hashMap.put("papayawhip", -4139);
            hashMap.put("peachpuff", -9543);
            hashMap.put("peru", -3308225);
            hashMap.put("pink", -16181);
            hashMap.put("plum", -2252579);
            hashMap.put("powderblue", -5185306);
            hashMap.put("purple", -8388480);
            hashMap.put("rebeccapurple", -10079335);
            hashMap.put("red", -65536);
            hashMap.put("rosybrown", -4419697);
            hashMap.put("royalblue", -12490271);
            hashMap.put("saddlebrown", -7650029);
            hashMap.put("salmon", -360334);
            hashMap.put("sandybrown", -744352);
            hashMap.put("seagreen", -13726889);
            hashMap.put("seashell", -2578);
            hashMap.put("sienna", -6270419);
            hashMap.put("silver", -4144960);
            hashMap.put("skyblue", -7876885);
            hashMap.put("slateblue", -9807155);
            hashMap.put("slategray", -9404272);
            hashMap.put("slategrey", -9404272);
            hashMap.put("snow", -1286);
            hashMap.put("springgreen", -16711809);
            hashMap.put("steelblue", -12156236);
            hashMap.put("tan", -2968436);
            hashMap.put("teal", -16744320);
            hashMap.put("thistle", -2572328);
            hashMap.put("tomato", -40121);
            hashMap.put("turquoise", -12525360);
            hashMap.put("violet", -1146130);
            hashMap.put("wheat", -663885);
            hashMap.put("white", -1);
            hashMap.put("whitesmoke", -657931);
            hashMap.put("yellow", -256);
            hashMap.put("yellowgreen", -6632142);
            hashMap.put("transparent", 0);
        }

        /* renamed from: a */
        public static Integer m9525a(String str) {
            return f16084a.get(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$d */
    /* loaded from: classes3.dex */
    public static class C2134d {

        /* renamed from: a */
        public static final Map<String, SVG.C2104o> f16085a;

        static {
            HashMap hashMap = new HashMap(9);
            f16085a = hashMap;
            SVG.Unit unit = SVG.Unit.pt;
            hashMap.put("xx-small", new SVG.C2104o(0.694f, unit));
            hashMap.put("x-small", new SVG.C2104o(0.833f, unit));
            hashMap.put("small", new SVG.C2104o(10.0f, unit));
            hashMap.put(FirebaseAnalytics.Param.MEDIUM, new SVG.C2104o(12.0f, unit));
            hashMap.put("large", new SVG.C2104o(14.4f, unit));
            hashMap.put("x-large", new SVG.C2104o(17.3f, unit));
            hashMap.put("xx-large", new SVG.C2104o(20.7f, unit));
            SVG.Unit unit2 = SVG.Unit.percent;
            hashMap.put("smaller", new SVG.C2104o(83.33f, unit2));
            hashMap.put("larger", new SVG.C2104o(120.0f, unit2));
        }

        /* renamed from: a */
        public static SVG.C2104o m9526a(String str) {
            return f16085a.get(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$e */
    /* loaded from: classes3.dex */
    public static class C2135e {

        /* renamed from: a */
        public static final Map<String, Integer> f16086a;

        static {
            HashMap hashMap = new HashMap(13);
            f16086a = hashMap;
            hashMap.put("normal", 400);
            hashMap.put("bold", 700);
            hashMap.put("bolder", 1);
            hashMap.put("lighter", -1);
            hashMap.put("100", 100);
            hashMap.put("200", 200);
            hashMap.put("300", 300);
            hashMap.put("400", 400);
            hashMap.put("500", 500);
            hashMap.put("600", 600);
            hashMap.put("700", 700);
            hashMap.put("800", Integer.valueOf(CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH));
            hashMap.put("900", 900);
        }

        /* renamed from: a */
        public static Integer m9527a(String str) {
            return f16086a.get(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$f */
    /* loaded from: classes3.dex */
    public class C2136f extends DefaultHandler2 {
        public C2136f() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            SVGParser.this.m9497d1(new String(cArr, i, i2));
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
            SVGParser.this.m9514p();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            SVGParser.this.m9515q(str, str2, str3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) throws SAXException {
            SVGParser.this.m9517s(str, SVGParser.this.m9522y0(new C2137g(str2)));
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            SVGParser.this.m9488X0();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            SVGParser.this.m9490Y0(str, str2, str3, attributes);
        }

        public /* synthetic */ C2136f(SVGParser sVGParser, C2131a c2131a) {
            this();
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$g */
    /* loaded from: classes3.dex */
    public static class C2137g {

        /* renamed from: a */
        public String f16088a;

        /* renamed from: c */
        public int f16090c;

        /* renamed from: b */
        public int f16089b = 0;

        /* renamed from: d */
        public t5k f16091d = new t5k();

        public C2137g(String str) {
            this.f16090c = 0;
            String trim = str.trim();
            this.f16088a = trim;
            this.f16090c = trim.length();
        }

        /* renamed from: A */
        public void m9528A() {
            while (true) {
                int i = this.f16089b;
                if (i >= this.f16090c || !m9539k(this.f16088a.charAt(i))) {
                    return;
                } else {
                    this.f16089b++;
                }
            }
        }

        /* renamed from: a */
        public int m9529a() {
            int i = this.f16089b;
            int i2 = this.f16090c;
            if (i == i2) {
                return -1;
            }
            int i3 = i + 1;
            this.f16089b = i3;
            if (i3 < i2) {
                return this.f16088a.charAt(i3);
            }
            return -1;
        }

        /* renamed from: b */
        public String m9530b() {
            int i = this.f16089b;
            while (!m9536h() && !m9539k(this.f16088a.charAt(this.f16089b))) {
                this.f16089b++;
            }
            String substring = this.f16088a.substring(i, this.f16089b);
            this.f16089b = i;
            return substring;
        }

        /* renamed from: c */
        public Boolean m9531c(Object obj) {
            if (obj == null) {
                return null;
            }
            m9554z();
            return m9541m();
        }

        /* renamed from: d */
        public float m9532d(float f) {
            if (Float.isNaN(f)) {
                return Float.NaN;
            }
            m9554z();
            return m9542n();
        }

        /* renamed from: e */
        public float m9533e(Boolean bool) {
            if (bool == null) {
                return Float.NaN;
            }
            m9554z();
            return m9542n();
        }

        /* renamed from: f */
        public boolean m9534f(char c) {
            int i = this.f16089b;
            boolean z = i < this.f16090c && this.f16088a.charAt(i) == c;
            if (z) {
                this.f16089b++;
            }
            return z;
        }

        /* renamed from: g */
        public boolean m9535g(String str) {
            int length = str.length();
            int i = this.f16089b;
            boolean z = i <= this.f16090c - length && this.f16088a.substring(i, i + length).equals(str);
            if (z) {
                this.f16089b += length;
            }
            return z;
        }

        /* renamed from: h */
        public boolean m9536h() {
            return this.f16089b == this.f16090c;
        }

        /* renamed from: i */
        public boolean m9537i() {
            int i = this.f16089b;
            if (i == this.f16090c) {
                return false;
            }
            char charAt = this.f16088a.charAt(i);
            return (charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z');
        }

        /* renamed from: j */
        public boolean m9538j(int i) {
            return i == 10 || i == 13;
        }

        /* renamed from: k */
        public boolean m9539k(int i) {
            return i == 32 || i == 10 || i == 13 || i == 9;
        }

        /* renamed from: l */
        public Integer m9540l() {
            int i = this.f16089b;
            if (i == this.f16090c) {
                return null;
            }
            String str = this.f16088a;
            this.f16089b = i + 1;
            return Integer.valueOf(str.charAt(i));
        }

        /* renamed from: m */
        public Boolean m9541m() {
            int i = this.f16089b;
            if (i == this.f16090c) {
                return null;
            }
            char charAt = this.f16088a.charAt(i);
            if (charAt != '0' && charAt != '1') {
                return null;
            }
            this.f16089b++;
            return Boolean.valueOf(charAt == '1');
        }

        /* renamed from: n */
        public float m9542n() {
            float m57304b = this.f16091d.m57304b(this.f16088a, this.f16089b, this.f16090c);
            if (!Float.isNaN(m57304b)) {
                this.f16089b = this.f16091d.m57303a();
            }
            return m57304b;
        }

        /* renamed from: o */
        public String m9543o() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            int charAt = this.f16088a.charAt(i);
            while (true) {
                if ((charAt < 97 || charAt > 122) && (charAt < 65 || charAt > 90)) {
                    break;
                }
                charAt = m9529a();
            }
            int i2 = this.f16089b;
            while (m9539k(charAt)) {
                charAt = m9529a();
            }
            if (charAt == 40) {
                this.f16089b++;
                return this.f16088a.substring(i, i2);
            }
            this.f16089b = i;
            return null;
        }

        /* renamed from: p */
        public SVG.C2104o m9544p() {
            float m9542n = m9542n();
            if (Float.isNaN(m9542n)) {
                return null;
            }
            SVG.Unit m9550v = m9550v();
            return m9550v == null ? new SVG.C2104o(m9542n, SVG.Unit.px) : new SVG.C2104o(m9542n, m9550v);
        }

        /* renamed from: q */
        public String m9545q() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            char charAt = this.f16088a.charAt(i);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            int m9529a = m9529a();
            while (m9529a != -1 && m9529a != charAt) {
                m9529a = m9529a();
            }
            if (m9529a == -1) {
                this.f16089b = i;
                return null;
            }
            int i2 = this.f16089b + 1;
            this.f16089b = i2;
            return this.f16088a.substring(i + 1, i2 - 1);
        }

        /* renamed from: r */
        public String m9546r() {
            return m9548t(' ', false);
        }

        /* renamed from: s */
        public String m9547s(char c) {
            return m9548t(c, false);
        }

        /* renamed from: t */
        public String m9548t(char c, boolean z) {
            if (m9536h()) {
                return null;
            }
            char charAt = this.f16088a.charAt(this.f16089b);
            if ((!z && m9539k(charAt)) || charAt == c) {
                return null;
            }
            int i = this.f16089b;
            int m9529a = m9529a();
            while (m9529a != -1 && m9529a != c && (z || !m9539k(m9529a))) {
                m9529a = m9529a();
            }
            return this.f16088a.substring(i, this.f16089b);
        }

        /* renamed from: u */
        public String m9549u(char c) {
            return m9548t(c, true);
        }

        /* renamed from: v */
        public SVG.Unit m9550v() {
            if (m9536h()) {
                return null;
            }
            if (this.f16088a.charAt(this.f16089b) == '%') {
                this.f16089b++;
                return SVG.Unit.percent;
            }
            int i = this.f16089b;
            if (i > this.f16090c - 2) {
                return null;
            }
            try {
                SVG.Unit valueOf = SVG.Unit.valueOf(this.f16088a.substring(i, i + 2).toLowerCase(Locale.US));
                this.f16089b += 2;
                return valueOf;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        /* renamed from: w */
        public String m9551w() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            char charAt = this.f16088a.charAt(i);
            if ((charAt < 'A' || charAt > 'Z') && (charAt < 'a' || charAt > 'z')) {
                this.f16089b = i;
                return null;
            }
            int m9529a = m9529a();
            while (true) {
                if ((m9529a < 65 || m9529a > 90) && (m9529a < 97 || m9529a > 122)) {
                    break;
                }
                m9529a = m9529a();
            }
            return this.f16088a.substring(i, this.f16089b);
        }

        /* renamed from: x */
        public float m9552x() {
            m9554z();
            float m57304b = this.f16091d.m57304b(this.f16088a, this.f16089b, this.f16090c);
            if (!Float.isNaN(m57304b)) {
                this.f16089b = this.f16091d.m57303a();
            }
            return m57304b;
        }

        /* renamed from: y */
        public String m9553y() {
            if (m9536h()) {
                return null;
            }
            int i = this.f16089b;
            this.f16089b = this.f16090c;
            return this.f16088a.substring(i);
        }

        /* renamed from: z */
        public boolean m9554z() {
            m9528A();
            int i = this.f16089b;
            if (i == this.f16090c || this.f16088a.charAt(i) != ',') {
                return false;
            }
            this.f16089b++;
            m9528A();
            return true;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVGParser$h */
    /* loaded from: classes3.dex */
    public class C2138h implements Attributes {

        /* renamed from: e */
        public XmlPullParser f16092e;

        public C2138h(XmlPullParser xmlPullParser) {
            this.f16092e = xmlPullParser;
        }

        @Override // org.xml.sax.Attributes
        public int getIndex(String str) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public int getLength() {
            return this.f16092e.getAttributeCount();
        }

        @Override // org.xml.sax.Attributes
        public String getLocalName(int i) {
            return this.f16092e.getAttributeName(i);
        }

        @Override // org.xml.sax.Attributes
        public String getQName(int i) {
            String attributeName = this.f16092e.getAttributeName(i);
            if (this.f16092e.getAttributePrefix(i) == null) {
                return attributeName;
            }
            return this.f16092e.getAttributePrefix(i) + ':' + attributeName;
        }

        @Override // org.xml.sax.Attributes
        public String getType(int i) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public String getURI(int i) {
            return this.f16092e.getAttributeNamespace(i);
        }

        @Override // org.xml.sax.Attributes
        public String getValue(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public String getType(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public String getValue(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public String getType(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public String getValue(int i) {
            return this.f16092e.getAttributeValue(i);
        }
    }

    /* renamed from: A0 */
    public static Set<String> m9408A0(String str) {
        C2137g c2137g = new C2137g(str);
        HashSet hashSet = new HashSet();
        while (!c2137g.m9536h()) {
            String m9546r = c2137g.m9546r();
            if (m9546r.startsWith(f16041m)) {
                hashSet.add(m9546r.substring(35));
            } else {
                hashSet.add("UNSUPPORTED");
            }
            c2137g.m9528A();
        }
        return hashSet;
    }

    /* renamed from: B0 */
    public static Set<String> m9409B0(String str) {
        C2137g c2137g = new C2137g(str);
        HashSet hashSet = new HashSet();
        while (!c2137g.m9536h()) {
            hashSet.add(c2137g.m9546r());
            c2137g.m9528A();
        }
        return hashSet;
    }

    /* renamed from: C0 */
    public static SVG.C2104o[] m9410C0(String str) {
        SVG.C2104o m9544p;
        C2137g c2137g = new C2137g(str);
        c2137g.m9528A();
        if (c2137g.m9536h() || (m9544p = c2137g.m9544p()) == null || m9544p.m9389g()) {
            return null;
        }
        float m9383a = m9544p.m9383a();
        ArrayList arrayList = new ArrayList();
        arrayList.add(m9544p);
        while (!c2137g.m9536h()) {
            c2137g.m9554z();
            SVG.C2104o m9544p2 = c2137g.m9544p();
            if (m9544p2 == null || m9544p2.m9389g()) {
                return null;
            }
            arrayList.add(m9544p2);
            m9383a += m9544p2.m9383a();
        }
        if (m9383a == 0.0f) {
            return null;
        }
        return (SVG.C2104o[]) arrayList.toArray(new SVG.C2104o[arrayList.size()]);
    }

    /* renamed from: D0 */
    public static SVG.Style.LineCap m9411D0(String str) {
        if ("butt".equals(str)) {
            return SVG.Style.LineCap.Butt;
        }
        if (Keywords.FUNC_ROUND_STRING.equals(str)) {
            return SVG.Style.LineCap.Round;
        }
        if ("square".equals(str)) {
            return SVG.Style.LineCap.Square;
        }
        return null;
    }

    /* renamed from: E0 */
    public static SVG.Style.LineJoin m9412E0(String str) {
        if ("miter".equals(str)) {
            return SVG.Style.LineJoin.Miter;
        }
        if (Keywords.FUNC_ROUND_STRING.equals(str)) {
            return SVG.Style.LineJoin.Round;
        }
        if ("bevel".equals(str)) {
            return SVG.Style.LineJoin.Bevel;
        }
        return null;
    }

    /* renamed from: F0 */
    public static void m9413F0(SVG.AbstractC2095j0 abstractC2095j0, String str) {
        C2137g c2137g = new C2137g(str.replaceAll("/\\*.*?\\*/", ""));
        while (true) {
            String m9547s = c2137g.m9547s(':');
            c2137g.m9528A();
            if (!c2137g.m9534f(':')) {
                return;
            }
            c2137g.m9528A();
            String m9549u = c2137g.m9549u(';');
            if (m9549u == null) {
                return;
            }
            c2137g.m9528A();
            if (c2137g.m9536h() || c2137g.m9534f(';')) {
                if (abstractC2095j0.f15956f == null) {
                    abstractC2095j0.f15956f = new SVG.Style();
                }
                m9420T0(abstractC2095j0.f15956f, m9547s, m9549u);
                c2137g.m9528A();
            }
        }
    }

    /* renamed from: G0 */
    public static Set<String> m9414G0(String str) {
        C2137g c2137g = new C2137g(str);
        HashSet hashSet = new HashSet();
        while (!c2137g.m9536h()) {
            String m9546r = c2137g.m9546r();
            int indexOf = m9546r.indexOf(45);
            if (indexOf != -1) {
                m9546r = m9546r.substring(0, indexOf);
            }
            hashSet.add(new Locale(m9546r, "", "").getLanguage());
            c2137g.m9528A();
        }
        return hashSet;
    }

    /* renamed from: H0 */
    public static SVG.Style.TextAnchor m9415H0(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1074341483:
                if (str.equals("middle")) {
                    c = 0;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 1;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(gon.f71290o0)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return SVG.Style.TextAnchor.Middle;
            case 1:
                return SVG.Style.TextAnchor.End;
            case 2:
                return SVG.Style.TextAnchor.Start;
            default:
                return null;
        }
    }

    /* renamed from: I0 */
    public static SVG.Style.TextDecoration m9416I0(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1171789332:
                if (str.equals("line-through")) {
                    c = 0;
                    break;
                }
                break;
            case -1026963764:
                if (str.equals("underline")) {
                    c = 1;
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 2;
                    break;
                }
                break;
            case 93826908:
                if (str.equals("blink")) {
                    c = 3;
                    break;
                }
                break;
            case 529818312:
                if (str.equals("overline")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return SVG.Style.TextDecoration.LineThrough;
            case 1:
                return SVG.Style.TextDecoration.Underline;
            case 2:
                return SVG.Style.TextDecoration.None;
            case 3:
                return SVG.Style.TextDecoration.Blink;
            case 4:
                return SVG.Style.TextDecoration.Overline;
            default:
                return null;
        }
    }

    /* renamed from: J0 */
    public static SVG.Style.TextDirection m9417J0(String str) {
        str.hashCode();
        if (str.equals("ltr")) {
            return SVG.Style.TextDirection.LTR;
        }
        if (str.equals("rtl")) {
            return SVG.Style.TextDirection.RTL;
        }
        return null;
    }

    /* renamed from: N0 */
    public static SVG.Style.VectorEffect m9418N0(String str) {
        str.hashCode();
        if (str.equals("none")) {
            return SVG.Style.VectorEffect.None;
        }
        if (str.equals("non-scaling-stroke")) {
            return SVG.Style.VectorEffect.NonScalingStroke;
        }
        return null;
    }

    /* renamed from: O0 */
    public static SVG.C2076b m9419O0(String str) throws SVGParseException {
        C2137g c2137g = new C2137g(str);
        c2137g.m9528A();
        float m9542n = c2137g.m9542n();
        c2137g.m9554z();
        float m9542n2 = c2137g.m9542n();
        c2137g.m9554z();
        float m9542n3 = c2137g.m9542n();
        c2137g.m9554z();
        float m9542n4 = c2137g.m9542n();
        if (Float.isNaN(m9542n) || Float.isNaN(m9542n2) || Float.isNaN(m9542n3) || Float.isNaN(m9542n4)) {
            throw new SVGParseException("Invalid viewBox definition - should have four numbers");
        }
        if (m9542n3 < 0.0f) {
            throw new SVGParseException("Invalid viewBox. width cannot be negative");
        }
        if (m9542n4 >= 0.0f) {
            return new SVG.C2076b(m9542n, m9542n2, m9542n3, m9542n4);
        }
        throw new SVGParseException("Invalid viewBox. height cannot be negative");
    }

    /* renamed from: T0 */
    public static void m9420T0(SVG.Style style, String str, String str2) {
        if (str2.length() == 0 || str2.equals("inherit")) {
            return;
        }
        try {
            switch (C2131a.f16082b[SVGAttr.fromString(str).ordinal()]) {
                case 47:
                    SVG.AbstractC2101m0 m9449u0 = m9449u0(str2);
                    style.f15857f = m9449u0;
                    if (m9449u0 != null) {
                        style.f15856e |= 1;
                        return;
                    }
                    return;
                case 48:
                    SVG.Style.FillRule m9431f0 = m9431f0(str2);
                    style.f15858g = m9431f0;
                    if (m9431f0 != null) {
                        style.f15856e |= 2;
                        return;
                    }
                    return;
                case 49:
                    Float m9445s0 = m9445s0(str2);
                    style.f15859h = m9445s0;
                    if (m9445s0 != null) {
                        style.f15856e |= 4;
                        return;
                    }
                    return;
                case 50:
                    SVG.AbstractC2101m0 m9449u02 = m9449u0(str2);
                    style.f15860i = m9449u02;
                    if (m9449u02 != null) {
                        style.f15856e |= 8;
                        return;
                    }
                    return;
                case 51:
                    Float m9445s02 = m9445s0(str2);
                    style.f15861j = m9445s02;
                    if (m9445s02 != null) {
                        style.f15856e |= 16;
                        return;
                    }
                    return;
                case 52:
                    style.f15862k = m9442p0(str2);
                    style.f15856e |= 32;
                    break;
                case 53:
                    SVG.Style.LineCap m9411D0 = m9411D0(str2);
                    style.f15864l = m9411D0;
                    if (m9411D0 != null) {
                        style.f15856e |= 64;
                        return;
                    }
                    return;
                case 54:
                    SVG.Style.LineJoin m9412E0 = m9412E0(str2);
                    style.f15865m = m9412E0;
                    if (m9412E0 != null) {
                        style.f15856e |= 128;
                        return;
                    }
                    return;
                case 55:
                    style.f15866n = Float.valueOf(m9433g0(str2));
                    style.f15856e |= 256;
                    break;
                case 56:
                    if ("none".equals(str2)) {
                        style.f15867o = null;
                        style.f15856e |= 512;
                        return;
                    }
                    SVG.C2104o[] m9410C0 = m9410C0(str2);
                    style.f15867o = m9410C0;
                    if (m9410C0 != null) {
                        style.f15856e |= 512;
                        return;
                    }
                    return;
                case 57:
                    style.f15868p = m9442p0(str2);
                    style.f15856e |= 1024;
                    break;
                case 58:
                    style.f15869q = m9445s0(str2);
                    style.f15856e |= 2048;
                    return;
                case 59:
                    style.f15871r = m9425c0(str2);
                    style.f15856e |= 4096;
                    break;
                case 60:
                    m9435i0(style, str2);
                    return;
                case 61:
                    List<String> m9437j0 = m9437j0(str2);
                    style.f15872s = m9437j0;
                    if (m9437j0 != null) {
                        style.f15856e |= 8192;
                        return;
                    }
                    return;
                case 62:
                    SVG.C2104o m9438k0 = m9438k0(str2);
                    style.f15873t = m9438k0;
                    if (m9438k0 != null) {
                        style.f15856e |= 16384;
                        return;
                    }
                    return;
                case 63:
                    Integer m9440m0 = m9440m0(str2);
                    style.f15875u = m9440m0;
                    if (m9440m0 != null) {
                        style.f15856e |= 32768;
                        return;
                    }
                    return;
                case 64:
                    SVG.Style.FontStyle m9439l0 = m9439l0(str2);
                    style.f15877v = m9439l0;
                    if (m9439l0 != null) {
                        style.f15856e |= 65536;
                        return;
                    }
                    return;
                case 65:
                    SVG.Style.TextDecoration m9416I0 = m9416I0(str2);
                    style.f15879w = m9416I0;
                    if (m9416I0 != null) {
                        style.f15856e |= 131072;
                        return;
                    }
                    return;
                case 66:
                    SVG.Style.TextDirection m9417J0 = m9417J0(str2);
                    style.f15881x = m9417J0;
                    if (m9417J0 != null) {
                        style.f15856e |= SVG.f15815W;
                        return;
                    }
                    return;
                case 67:
                    SVG.Style.TextAnchor m9415H0 = m9415H0(str2);
                    style.f15883y = m9415H0;
                    if (m9415H0 != null) {
                        style.f15856e |= 262144;
                        return;
                    }
                    return;
                case 68:
                    Boolean m9447t0 = m9447t0(str2);
                    style.f15885z = m9447t0;
                    if (m9447t0 != null) {
                        style.f15856e |= 524288;
                        return;
                    }
                    return;
                case 69:
                    String m9441n0 = m9441n0(str2, str);
                    style.f15853O = m9441n0;
                    style.f15854Q = m9441n0;
                    style.f15855Z = m9441n0;
                    style.f15856e |= 14680064;
                    return;
                case 70:
                    style.f15853O = m9441n0(str2, str);
                    style.f15856e |= 2097152;
                    return;
                case 71:
                    style.f15854Q = m9441n0(str2, str);
                    style.f15856e |= 4194304;
                    return;
                case 72:
                    style.f15855Z = m9441n0(str2, str);
                    style.f15856e |= 8388608;
                    return;
                case 73:
                    if (str2.indexOf(124) < 0) {
                        if (f16052x.contains('|' + str2 + '|')) {
                            style.f15863k0 = Boolean.valueOf(!str2.equals("none"));
                            style.f15856e |= 16777216;
                            return;
                        }
                        return;
                    }
                    return;
                case 74:
                    if (str2.indexOf(124) < 0) {
                        if (f16053y.contains('|' + str2 + '|')) {
                            style.f15870q0 = Boolean.valueOf(str2.equals("visible"));
                            style.f15856e |= SVG.f15804L;
                            return;
                        }
                        return;
                    }
                    return;
                case 75:
                    if (str2.equals(f16051w)) {
                        style.f15874t0 = SVG.C2088g.m9381a();
                    } else {
                        try {
                            style.f15874t0 = m9425c0(str2);
                        } catch (SVGParseException e) {
                            Log.w(f16038j, e.getMessage());
                            return;
                        }
                    }
                    style.f15856e |= SVG.f15805M;
                    return;
                case 76:
                    style.f15876u0 = m9445s0(str2);
                    style.f15856e |= SVG.f15806N;
                    return;
                case 77:
                    SVG.C2079c m9423b0 = m9423b0(str2);
                    style.f15852J = m9423b0;
                    if (m9423b0 != null) {
                        style.f15856e |= 1048576;
                        return;
                    }
                    return;
                case 78:
                    style.f15878v0 = m9441n0(str2, str);
                    style.f15856e |= SVG.f15807O;
                    return;
                case 79:
                    style.f15880w0 = m9431f0(str2);
                    style.f15856e |= SVG.f15808P;
                    return;
                case 80:
                    style.f15882x0 = m9441n0(str2, str);
                    style.f15856e |= 1073741824;
                    return;
                case 81:
                    if (str2.equals(f16051w)) {
                        style.f15884y0 = SVG.C2088g.m9381a();
                    } else {
                        try {
                            style.f15884y0 = m9425c0(str2);
                        } catch (SVGParseException e2) {
                            Log.w(f16038j, e2.getMessage());
                            return;
                        }
                    }
                    style.f15856e |= SVG.f15810R;
                    return;
                case 82:
                    style.f15886z0 = m9445s0(str2);
                    style.f15856e |= 4294967296L;
                    return;
                case 83:
                    if (str2.equals(f16051w)) {
                        style.f15848A0 = SVG.C2088g.m9381a();
                    } else {
                        try {
                            style.f15848A0 = m9425c0(str2);
                        } catch (SVGParseException e3) {
                            Log.w(f16038j, e3.getMessage());
                            return;
                        }
                    }
                    style.f15856e |= 8589934592L;
                    return;
                case 84:
                    style.f15849B0 = m9445s0(str2);
                    style.f15856e |= SVG.f15813U;
                    return;
                case 85:
                    SVG.Style.VectorEffect m9418N0 = m9418N0(str2);
                    style.f15850C0 = m9418N0;
                    if (m9418N0 != null) {
                        style.f15856e |= SVG.f15814V;
                        return;
                    }
                    return;
                case 86:
                    SVG.Style.RenderQuality m9453z0 = m9453z0(str2);
                    style.f15851D0 = m9453z0;
                    if (m9453z0 != null) {
                        style.f15856e |= SVG.f15816X;
                        return;
                    }
                    return;
                default:
            }
        } catch (SVGParseException unused) {
        }
    }

    /* renamed from: b0 */
    public static SVG.C2079c m9423b0(String str) {
        if ("auto".equals(str) || !str.startsWith("rect(")) {
            return null;
        }
        C2137g c2137g = new C2137g(str.substring(5));
        c2137g.m9528A();
        SVG.C2104o m9444r0 = m9444r0(c2137g);
        c2137g.m9554z();
        SVG.C2104o m9444r02 = m9444r0(c2137g);
        c2137g.m9554z();
        SVG.C2104o m9444r03 = m9444r0(c2137g);
        c2137g.m9554z();
        SVG.C2104o m9444r04 = m9444r0(c2137g);
        c2137g.m9528A();
        if (c2137g.m9534f(')') || c2137g.m9536h()) {
            return new SVG.C2079c(m9444r0, m9444r02, m9444r03, m9444r04);
        }
        return null;
    }

    /* renamed from: c0 */
    public static SVG.C2086f m9425c0(String str) throws SVGParseException {
        if (str.charAt(0) == '#') {
            kni m55250b = kni.m55250b(str, 1, str.length());
            if (m55250b == null) {
                throw new SVGParseException("Bad hex colour value: " + str);
            }
            int m55252a = m55250b.m55252a();
            if (m55252a == 4) {
                int m55253d = m55250b.m55253d();
                int i = m55253d & 3840;
                int i2 = m55253d & 240;
                int i3 = m55253d & 15;
                return new SVG.C2086f(i3 | (i << 8) | (-16777216) | (i << 12) | (i2 << 8) | (i2 << 4) | (i3 << 4));
            }
            if (m55252a == 5) {
                int m55253d2 = m55250b.m55253d();
                int i4 = 61440 & m55253d2;
                int i5 = m55253d2 & 3840;
                int i6 = m55253d2 & 240;
                int i7 = m55253d2 & 15;
                return new SVG.C2086f((i7 << 24) | (i7 << 28) | (i4 << 8) | (i4 << 4) | (i5 << 4) | i5 | i6 | (i6 >> 4));
            }
            if (m55252a == 7) {
                return new SVG.C2086f(m55250b.m55253d() | (-16777216));
            }
            if (m55252a == 9) {
                return new SVG.C2086f((m55250b.m55253d() >>> 8) | (m55250b.m55253d() << 24));
            }
            throw new SVGParseException("Bad hex colour value: " + str);
        }
        String lowerCase = str.toLowerCase(Locale.US);
        boolean startsWith = lowerCase.startsWith("rgba(");
        if (!startsWith && !lowerCase.startsWith("rgb(")) {
            boolean startsWith2 = lowerCase.startsWith("hsla(");
            if (!startsWith2 && !lowerCase.startsWith("hsl(")) {
                return m9427d0(lowerCase);
            }
            C2137g c2137g = new C2137g(str.substring(startsWith2 ? 5 : 4));
            c2137g.m9528A();
            float m9542n = c2137g.m9542n();
            float m9532d = c2137g.m9532d(m9542n);
            if (!Float.isNaN(m9532d)) {
                c2137g.m9534f('%');
            }
            float m9532d2 = c2137g.m9532d(m9532d);
            if (!Float.isNaN(m9532d2)) {
                c2137g.m9534f('%');
            }
            if (!startsWith2) {
                c2137g.m9528A();
                if (!Float.isNaN(m9532d2) && c2137g.m9534f(')')) {
                    return new SVG.C2086f(m9446t(m9542n, m9532d, m9532d2) | (-16777216));
                }
                throw new SVGParseException("Bad hsl() colour value: " + str);
            }
            float m9532d3 = c2137g.m9532d(m9532d2);
            c2137g.m9528A();
            if (!Float.isNaN(m9532d3) && c2137g.m9534f(')')) {
                return new SVG.C2086f((m9436j(m9532d3 * 256.0f) << 24) | m9446t(m9542n, m9532d, m9532d2));
            }
            throw new SVGParseException("Bad hsla() colour value: " + str);
        }
        C2137g c2137g2 = new C2137g(str.substring(startsWith ? 5 : 4));
        c2137g2.m9528A();
        float m9542n2 = c2137g2.m9542n();
        if (!Float.isNaN(m9542n2) && c2137g2.m9534f('%')) {
            m9542n2 = (m9542n2 * 256.0f) / 100.0f;
        }
        float m9532d4 = c2137g2.m9532d(m9542n2);
        if (!Float.isNaN(m9532d4) && c2137g2.m9534f('%')) {
            m9532d4 = (m9532d4 * 256.0f) / 100.0f;
        }
        float m9532d5 = c2137g2.m9532d(m9532d4);
        if (!Float.isNaN(m9532d5) && c2137g2.m9534f('%')) {
            m9532d5 = (m9532d5 * 256.0f) / 100.0f;
        }
        if (!startsWith) {
            c2137g2.m9528A();
            if (!Float.isNaN(m9532d5) && c2137g2.m9534f(')')) {
                return new SVG.C2086f((m9436j(m9542n2) << 16) | (-16777216) | (m9436j(m9532d4) << 8) | m9436j(m9532d5));
            }
            throw new SVGParseException("Bad rgb() colour value: " + str);
        }
        float m9532d6 = c2137g2.m9532d(m9532d5);
        c2137g2.m9528A();
        if (!Float.isNaN(m9532d6) && c2137g2.m9534f(')')) {
            return new SVG.C2086f((m9436j(m9532d6 * 256.0f) << 24) | (m9436j(m9542n2) << 16) | (m9436j(m9532d4) << 8) | m9436j(m9532d5));
        }
        throw new SVGParseException("Bad rgba() colour value: " + str);
    }

    /* renamed from: d0 */
    public static SVG.C2086f m9427d0(String str) throws SVGParseException {
        Integer m9525a = C2133c.m9525a(str);
        if (m9525a != null) {
            return new SVG.C2086f(m9525a.intValue());
        }
        throw new SVGParseException("Invalid colour keyword: " + str);
    }

    /* renamed from: e0 */
    public static SVG.AbstractC2101m0 m9429e0(String str) {
        str.hashCode();
        if (str.equals("none")) {
            return SVG.C2086f.f15929g;
        }
        if (str.equals(f16051w)) {
            return SVG.C2088g.m9381a();
        }
        try {
            return m9425c0(str);
        } catch (SVGParseException unused) {
            return null;
        }
    }

    /* renamed from: f0 */
    public static SVG.Style.FillRule m9431f0(String str) {
        if ("nonzero".equals(str)) {
            return SVG.Style.FillRule.NonZero;
        }
        if ("evenodd".equals(str)) {
            return SVG.Style.FillRule.EvenOdd;
        }
        return null;
    }

    /* renamed from: g0 */
    public static float m9433g0(String str) throws SVGParseException {
        int length = str.length();
        if (length != 0) {
            return m9434h0(str, 0, length);
        }
        throw new SVGParseException("Invalid float value (empty string)");
    }

    /* renamed from: h0 */
    public static float m9434h0(String str, int i, int i2) throws SVGParseException {
        float m57304b = new t5k().m57304b(str, i, i2);
        if (!Float.isNaN(m57304b)) {
            return m57304b;
        }
        throw new SVGParseException("Invalid float value: " + str);
    }

    /* renamed from: i0 */
    public static void m9435i0(SVG.Style style, String str) {
        String m9547s;
        if ("|caption|icon|menu|message-box|small-caption|status-bar|".contains('|' + str + '|')) {
            C2137g c2137g = new C2137g(str);
            Integer num = null;
            SVG.Style.FontStyle fontStyle = null;
            String str2 = null;
            while (true) {
                m9547s = c2137g.m9547s('/');
                c2137g.m9528A();
                if (m9547s != null) {
                    if (num != null && fontStyle != null) {
                        break;
                    }
                    if (!m9547s.equals("normal") && (num != null || (num = C2135e.m9527a(m9547s)) == null)) {
                        if (fontStyle != null || (fontStyle = m9439l0(m9547s)) == null) {
                            if (str2 != null || !m9547s.equals("small-caps")) {
                                break;
                            } else {
                                str2 = m9547s;
                            }
                        }
                    }
                } else {
                    return;
                }
            }
            SVG.C2104o m9438k0 = m9438k0(m9547s);
            if (c2137g.m9534f('/')) {
                c2137g.m9528A();
                String m9546r = c2137g.m9546r();
                if (m9546r != null) {
                    try {
                        m9442p0(m9546r);
                    } catch (SVGParseException unused) {
                        return;
                    }
                }
                c2137g.m9528A();
            }
            style.f15872s = m9437j0(c2137g.m9553y());
            style.f15873t = m9438k0;
            style.f15875u = Integer.valueOf(num == null ? 400 : num.intValue());
            if (fontStyle == null) {
                fontStyle = SVG.Style.FontStyle.Normal;
            }
            style.f15877v = fontStyle;
            style.f15856e |= 122880;
        }
    }

    /* renamed from: j */
    public static int m9436j(float f) {
        if (f < 0.0f) {
            return 0;
        }
        if (f > 255.0f) {
            return 255;
        }
        return Math.round(f);
    }

    /* renamed from: j0 */
    public static List<String> m9437j0(String str) {
        C2137g c2137g = new C2137g(str);
        ArrayList arrayList = null;
        do {
            String m9545q = c2137g.m9545q();
            if (m9545q == null) {
                m9545q = c2137g.m9549u(',');
            }
            if (m9545q == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(m9545q);
            c2137g.m9554z();
        } while (!c2137g.m9536h());
        return arrayList;
    }

    /* renamed from: k0 */
    public static SVG.C2104o m9438k0(String str) {
        try {
            SVG.C2104o m9526a = C2134d.m9526a(str);
            return m9526a == null ? m9442p0(str) : m9526a;
        } catch (SVGParseException unused) {
            return null;
        }
    }

    /* renamed from: l0 */
    public static SVG.Style.FontStyle m9439l0(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1657669071:
                if (str.equals("oblique")) {
                    c = 0;
                    break;
                }
                break;
            case -1178781136:
                if (str.equals("italic")) {
                    c = 1;
                    break;
                }
                break;
            case -1039745817:
                if (str.equals("normal")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return SVG.Style.FontStyle.Oblique;
            case 1:
                return SVG.Style.FontStyle.Italic;
            case 2:
                return SVG.Style.FontStyle.Normal;
            default:
                return null;
        }
    }

    /* renamed from: m0 */
    public static Integer m9440m0(String str) {
        return C2135e.m9527a(str);
    }

    /* renamed from: n0 */
    public static String m9441n0(String str, String str2) {
        if (!str.equals("none") && str.startsWith("url(")) {
            return str.endsWith(MotionUtils.f31762d) ? str.substring(4, str.length() - 1).trim() : str.substring(4).trim();
        }
        return null;
    }

    /* renamed from: p0 */
    public static SVG.C2104o m9442p0(String str) throws SVGParseException {
        if (str.length() == 0) {
            throw new SVGParseException("Invalid length value (empty string)");
        }
        int length = str.length();
        SVG.Unit unit = SVG.Unit.px;
        char charAt = str.charAt(length - 1);
        if (charAt == '%') {
            length--;
            unit = SVG.Unit.percent;
        } else if (length > 2 && Character.isLetter(charAt) && Character.isLetter(str.charAt(length - 2))) {
            length -= 2;
            try {
                unit = SVG.Unit.valueOf(str.substring(length).toLowerCase(Locale.US));
            } catch (IllegalArgumentException unused) {
                throw new SVGParseException("Invalid length unit specifier: " + str);
            }
        }
        try {
            return new SVG.C2104o(m9434h0(str, 0, length), unit);
        } catch (NumberFormatException e) {
            throw new SVGParseException("Invalid length value: " + str, e);
        }
    }

    /* renamed from: q0 */
    public static List<SVG.C2104o> m9443q0(String str) throws SVGParseException {
        if (str.length() == 0) {
            throw new SVGParseException("Invalid length list (empty string)");
        }
        ArrayList arrayList = new ArrayList(1);
        C2137g c2137g = new C2137g(str);
        c2137g.m9528A();
        while (!c2137g.m9536h()) {
            float m9542n = c2137g.m9542n();
            if (Float.isNaN(m9542n)) {
                throw new SVGParseException("Invalid length list value: " + c2137g.m9530b());
            }
            SVG.Unit m9550v = c2137g.m9550v();
            if (m9550v == null) {
                m9550v = SVG.Unit.px;
            }
            arrayList.add(new SVG.C2104o(m9542n, m9550v));
            c2137g.m9554z();
        }
        return arrayList;
    }

    /* renamed from: r0 */
    public static SVG.C2104o m9444r0(C2137g c2137g) {
        return c2137g.m9535g("auto") ? new SVG.C2104o(0.0f) : c2137g.m9544p();
    }

    /* renamed from: s0 */
    public static Float m9445s0(String str) {
        try {
            float m9433g0 = m9433g0(str);
            float f = 0.0f;
            if (m9433g0 >= 0.0f) {
                f = 1.0f;
                if (m9433g0 > 1.0f) {
                }
                return Float.valueOf(m9433g0);
            }
            m9433g0 = f;
            return Float.valueOf(m9433g0);
        } catch (SVGParseException unused) {
            return null;
        }
    }

    /* renamed from: t */
    public static int m9446t(float f, float f2, float f3) {
        float f4 = f % 360.0f;
        if (f < 0.0f) {
            f4 += 360.0f;
        }
        float f5 = f4 / 60.0f;
        float f6 = f2 / 100.0f;
        float f7 = f3 / 100.0f;
        if (f6 < 0.0f) {
            f6 = 0.0f;
        } else if (f6 > 1.0f) {
            f6 = 1.0f;
        }
        float f8 = f7 >= 0.0f ? f7 > 1.0f ? 1.0f : f7 : 0.0f;
        float f9 = f8 <= 0.5f ? (f6 + 1.0f) * f8 : (f8 + f6) - (f6 * f8);
        float f10 = (f8 * 2.0f) - f9;
        return m9436j(m9448u(f10, f9, f5 - 2.0f) * 256.0f) | (m9436j(m9448u(f10, f9, f5 + 2.0f) * 256.0f) << 16) | (m9436j(m9448u(f10, f9, f5) * 256.0f) << 8);
    }

    /* renamed from: t0 */
    public static Boolean m9447t0(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1217487446:
                if (str.equals(CellUtil.HIDDEN)) {
                    c = 0;
                    break;
                }
                break;
            case -907680051:
                if (str.equals("scroll")) {
                    c = 1;
                    break;
                }
                break;
            case 3005871:
                if (str.equals("auto")) {
                    c = 2;
                    break;
                }
                break;
            case 466743410:
                if (str.equals("visible")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return Boolean.FALSE;
            case 2:
            case 3:
                return Boolean.TRUE;
            default:
                return null;
        }
    }

    /* renamed from: u */
    public static float m9448u(float f, float f2, float f3) {
        float f4;
        if (f3 < 0.0f) {
            f3 += 6.0f;
        }
        if (f3 >= 6.0f) {
            f3 -= 6.0f;
        }
        if (f3 < 1.0f) {
            f4 = (f2 - f) * f3;
        } else {
            if (f3 < 3.0f) {
                return f2;
            }
            if (f3 >= 4.0f) {
                return f;
            }
            f4 = (f2 - f) * (4.0f - f3);
        }
        return f4 + f;
    }

    /* renamed from: u0 */
    public static SVG.AbstractC2101m0 m9449u0(String str) {
        if (!str.startsWith("url(")) {
            return m9429e0(str);
        }
        int indexOf = str.indexOf(MotionUtils.f31762d);
        if (indexOf == -1) {
            return new SVG.C2114t(str.substring(4).trim(), null);
        }
        String trim = str.substring(4, indexOf).trim();
        String trim2 = str.substring(indexOf + 1).trim();
        return new SVG.C2114t(trim, trim2.length() > 0 ? m9429e0(trim2) : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x02a4, code lost:
    
        return r9;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0038. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x027b A[SYNTHETIC] */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.caverock.androidsvg.SVG.C2118v m9450v0(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.m9450v0(java.lang.String):com.caverock.androidsvg.SVG$v");
    }

    /* renamed from: w0 */
    public static PreserveAspectRatio m9451w0(String str) throws SVGParseException {
        PreserveAspectRatio.Scale scale;
        C2137g c2137g = new C2137g(str);
        c2137g.m9528A();
        String m9546r = c2137g.m9546r();
        if ("defer".equals(m9546r)) {
            c2137g.m9528A();
            m9546r = c2137g.m9546r();
        }
        PreserveAspectRatio.Alignment m9524a = C2132b.m9524a(m9546r);
        c2137g.m9528A();
        if (c2137g.m9536h()) {
            scale = null;
        } else {
            String m9546r2 = c2137g.m9546r();
            m9546r2.hashCode();
            if (m9546r2.equals("meet")) {
                scale = PreserveAspectRatio.Scale.meet;
            } else {
                if (!m9546r2.equals("slice")) {
                    throw new SVGParseException("Invalid preserveAspectRatio definition: " + str);
                }
                scale = PreserveAspectRatio.Scale.slice;
            }
        }
        return new PreserveAspectRatio(m9524a, scale);
    }

    /* renamed from: x0 */
    public static void m9452x0(SVG.AbstractC2103n0 abstractC2103n0, String str) throws SVGParseException {
        abstractC2103n0.f15972o = m9451w0(str);
    }

    /* renamed from: z0 */
    public static SVG.Style.RenderQuality m9453z0(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -933002398:
                if (str.equals("optimizeQuality")) {
                    c = 0;
                    break;
                }
                break;
            case 3005871:
                if (str.equals("auto")) {
                    c = 1;
                    break;
                }
                break;
            case 362741610:
                if (str.equals("optimizeSpeed")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return SVG.Style.RenderQuality.optimizeQuality;
            case 1:
                return SVG.Style.RenderQuality.auto;
            case 2:
                return SVG.Style.RenderQuality.optimizeSpeed;
            default:
                return null;
        }
    }

    /* renamed from: A */
    public SVG m9454A(InputStream inputStream, boolean z) throws SVGParseException {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            inputStream.mark(3);
            int read = inputStream.read() + (inputStream.read() << 8);
            inputStream.reset();
            if (read == 35615) {
                inputStream = new BufferedInputStream(new GZIPInputStream(inputStream));
            }
        } catch (IOException unused) {
        }
        try {
            inputStream.mark(4096);
            m9469M0(inputStream, z);
            return this.f16054a;
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused2) {
                Log.e(f16038j, "Exception thrown closing input stream");
            }
        }
    }

    /* renamed from: B */
    public final void m9455B(SVG.C2082d c2082d, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 12:
                    c2082d.f15919o = m9442p0(trim);
                    break;
                case 13:
                    c2082d.f15920p = m9442p0(trim);
                    break;
                case 14:
                    SVG.C2104o m9442p0 = m9442p0(trim);
                    c2082d.f15921q = m9442p0;
                    if (m9442p0.m9389g()) {
                        throw new SVGParseException("Invalid <circle> element. r cannot be negative");
                    }
                    break;
            }
        }
    }

    /* renamed from: C */
    public final void m9456C(SVG.C2084e c2084e, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()] == 38) {
                if ("objectBoundingBox".equals(trim)) {
                    c2084e.f15927p = Boolean.FALSE;
                } else {
                    if (!"userSpaceOnUse".equals(trim)) {
                        throw new SVGParseException("Invalid value for attribute clipPathUnits");
                    }
                    c2084e.f15927p = Boolean.TRUE;
                }
            }
        }
    }

    /* renamed from: D */
    public final void m9457D(SVG.InterfaceC2085e0 interfaceC2085e0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 21:
                    interfaceC2085e0.mo9379j(m9408A0(trim));
                    break;
                case 22:
                    interfaceC2085e0.mo9374d(trim);
                    break;
                case 23:
                    interfaceC2085e0.mo9372b(m9414G0(trim));
                    break;
                case 24:
                    interfaceC2085e0.mo9373c(m9409B0(trim));
                    break;
                case 25:
                    List<String> m9437j0 = m9437j0(trim);
                    interfaceC2085e0.mo9376g(m9437j0 != null ? new HashSet(m9437j0) : new HashSet(0));
                    break;
            }
        }
    }

    /* renamed from: E */
    public final void m9458E(SVG.AbstractC2095j0 abstractC2095j0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String qName = attributes.getQName(i);
            if (qName.equals("id") || qName.equals("xml:id")) {
                abstractC2095j0.f15953c = attributes.getValue(i).trim();
                return;
            }
            if (qName.equals(Constants.ATTRNAME_XMLSPACE)) {
                String trim = attributes.getValue(i).trim();
                if ("default".equals(trim)) {
                    abstractC2095j0.f15954d = Boolean.FALSE;
                    return;
                } else {
                    if ("preserve".equals(trim)) {
                        abstractC2095j0.f15954d = Boolean.TRUE;
                        return;
                    }
                    throw new SVGParseException("Invalid value for \"xml:space\" attribute: " + trim);
                }
            }
        }
    }

    /* renamed from: F */
    public final void m9459F(SVG.C2092i c2092i, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 10:
                    SVG.C2104o m9442p0 = m9442p0(trim);
                    c2092i.f15945q = m9442p0;
                    if (m9442p0.m9389g()) {
                        throw new SVGParseException("Invalid <ellipse> element. rx cannot be negative");
                    }
                    break;
                case 11:
                    SVG.C2104o m9442p02 = m9442p0(trim);
                    c2092i.f15946r = m9442p02;
                    if (m9442p02.m9389g()) {
                        throw new SVGParseException("Invalid <ellipse> element. ry cannot be negative");
                    }
                    break;
                case 12:
                    c2092i.f15943o = m9442p0(trim);
                    break;
                case 13:
                    c2092i.f15944p = m9442p0(trim);
                    break;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        continue;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9460G(com.caverock.androidsvg.SVG.AbstractC2094j r5, org.xml.sax.Attributes r6) throws com.caverock.androidsvg.SVGParseException {
        /*
            r4 = this;
            r0 = 0
        L1:
            int r1 = r6.getLength()
            if (r0 >= r1) goto L90
            java.lang.String r1 = r6.getValue(r0)
            java.lang.String r1 = r1.trim()
            int[] r2 = com.caverock.androidsvg.SVGParser.C2131a.f16082b
            java.lang.String r3 = r6.getLocalName(r0)
            com.caverock.androidsvg.SVGParser$SVGAttr r3 = com.caverock.androidsvg.SVGParser.SVGAttr.fromString(r3)
            int r3 = r3.ordinal()
            r2 = r2[r3]
            r3 = 6
            if (r2 == r3) goto L72
            switch(r2) {
                case 32: goto L50;
                case 33: goto L49;
                case 34: goto L26;
                default: goto L25;
            }
        L25:
            goto L8c
        L26:
            com.caverock.androidsvg.SVG$GradientSpread r2 = com.caverock.androidsvg.SVG.GradientSpread.valueOf(r1)     // Catch: java.lang.IllegalArgumentException -> L2d
            r5.f15951k = r2     // Catch: java.lang.IllegalArgumentException -> L2d
            goto L8c
        L2d:
            com.caverock.androidsvg.SVGParseException r4 = new com.caverock.androidsvg.SVGParseException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Invalid spreadMethod attribute. \""
            r5.append(r6)
            r5.append(r1)
            java.lang.String r6 = "\" is not a valid value."
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L49:
            android.graphics.Matrix r1 = r4.m9465K0(r1)
            r5.f15950j = r1
            goto L8c
        L50:
            java.lang.String r2 = "objectBoundingBox"
            boolean r2 = r2.equals(r1)
            if (r2 == 0) goto L5d
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r5.f15949i = r1
            goto L8c
        L5d:
            java.lang.String r2 = "userSpaceOnUse"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L6a
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r5.f15949i = r1
            goto L8c
        L6a:
            com.caverock.androidsvg.SVGParseException r4 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r5 = "Invalid value for attribute gradientUnits"
            r4.<init>(r5)
            throw r4
        L72:
            java.lang.String r2 = ""
            java.lang.String r3 = r6.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L8a
            java.lang.String r2 = "http://www.w3.org/1999/xlink"
            java.lang.String r3 = r6.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L8c
        L8a:
            r5.f15952l = r1
        L8c:
            int r0 = r0 + 1
            goto L1
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.m9460G(com.caverock.androidsvg.SVG$j, org.xml.sax.Attributes):void");
    }

    /* renamed from: H */
    public final void m9461H(SVG.C2102n c2102n, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                c2102n.f15967q = m9442p0(trim);
            } else if (i2 == 2) {
                c2102n.f15968r = m9442p0(trim);
            } else if (i2 == 3) {
                SVG.C2104o m9442p0 = m9442p0(trim);
                c2102n.f15969s = m9442p0;
                if (m9442p0.m9389g()) {
                    throw new SVGParseException("Invalid <use> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                SVG.C2104o m9442p02 = m9442p0(trim);
                c2102n.f15970t = m9442p02;
                if (m9442p02.m9389g()) {
                    throw new SVGParseException("Invalid <use> element. height cannot be negative");
                }
            } else if (i2 != 6) {
                if (i2 == 7) {
                    m9452x0(c2102n, trim);
                }
            } else if ("".equals(attributes.getURI(i)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                c2102n.f15966p = trim;
            }
        }
    }

    /* renamed from: I */
    public final void m9462I(SVG.C2106p c2106p, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 15:
                    c2106p.f15980o = m9442p0(trim);
                    break;
                case 16:
                    c2106p.f15981p = m9442p0(trim);
                    break;
                case 17:
                    c2106p.f15982q = m9442p0(trim);
                    break;
                case 18:
                    c2106p.f15983r = m9442p0(trim);
                    break;
            }
        }
    }

    /* renamed from: J */
    public final void m9463J(SVG.C2097k0 c2097k0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 15:
                    c2097k0.f15959m = m9442p0(trim);
                    break;
                case 16:
                    c2097k0.f15960n = m9442p0(trim);
                    break;
                case 17:
                    c2097k0.f15961o = m9442p0(trim);
                    break;
                case 18:
                    c2097k0.f15962p = m9442p0(trim);
                    break;
            }
        }
    }

    /* renamed from: K */
    public final void m9464K(SVG.C2108q c2108q, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()]) {
                case 26:
                    c2108q.f15986r = m9442p0(trim);
                    break;
                case 27:
                    c2108q.f15987s = m9442p0(trim);
                    break;
                case 28:
                    SVG.C2104o m9442p0 = m9442p0(trim);
                    c2108q.f15988t = m9442p0;
                    if (m9442p0.m9389g()) {
                        throw new SVGParseException("Invalid <marker> element. markerWidth cannot be negative");
                    }
                    break;
                case 29:
                    SVG.C2104o m9442p02 = m9442p0(trim);
                    c2108q.f15989u = m9442p02;
                    if (m9442p02.m9389g()) {
                        throw new SVGParseException("Invalid <marker> element. markerHeight cannot be negative");
                    }
                    break;
                case 30:
                    if (!ApiBroadCastReceiver.ARGS_STROKE_WIDTH.equals(trim)) {
                        if (!"userSpaceOnUse".equals(trim)) {
                            throw new SVGParseException("Invalid value for attribute markerUnits");
                        }
                        c2108q.f15985q = true;
                        break;
                    } else {
                        c2108q.f15985q = false;
                        break;
                    }
                case 31:
                    if ("auto".equals(trim)) {
                        c2108q.f15990v = Float.valueOf(Float.NaN);
                        break;
                    } else {
                        c2108q.f15990v = Float.valueOf(m9433g0(trim));
                        break;
                    }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0026. Please report as an issue. */
    /* renamed from: K0 */
    public final Matrix m9465K0(String str) throws SVGParseException {
        Matrix matrix = new Matrix();
        C2137g c2137g = new C2137g(str);
        c2137g.m9528A();
        while (!c2137g.m9536h()) {
            String m9543o = c2137g.m9543o();
            if (m9543o == null) {
                throw new SVGParseException("Bad transform function encountered in transform list: " + str);
            }
            char c = 65535;
            switch (m9543o.hashCode()) {
                case -1081239615:
                    if (m9543o.equals("matrix")) {
                        c = 0;
                        break;
                    }
                    break;
                case -925180581:
                    if (m9543o.equals("rotate")) {
                        c = 1;
                        break;
                    }
                    break;
                case 109250890:
                    if (m9543o.equals("scale")) {
                        c = 2;
                        break;
                    }
                    break;
                case 109493390:
                    if (m9543o.equals("skewX")) {
                        c = 3;
                        break;
                    }
                    break;
                case 109493391:
                    if (m9543o.equals("skewY")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1052832078:
                    if (m9543o.equals("translate")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    c2137g.m9528A();
                    float m9542n = c2137g.m9542n();
                    c2137g.m9554z();
                    float m9542n2 = c2137g.m9542n();
                    c2137g.m9554z();
                    float m9542n3 = c2137g.m9542n();
                    c2137g.m9554z();
                    float m9542n4 = c2137g.m9542n();
                    c2137g.m9554z();
                    float m9542n5 = c2137g.m9542n();
                    c2137g.m9554z();
                    float m9542n6 = c2137g.m9542n();
                    c2137g.m9528A();
                    if (!Float.isNaN(m9542n6) && c2137g.m9534f(')')) {
                        Matrix matrix2 = new Matrix();
                        matrix2.setValues(new float[]{m9542n, m9542n3, m9542n5, m9542n2, m9542n4, m9542n6, 0.0f, 0.0f, 1.0f});
                        matrix.preConcat(matrix2);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                    break;
                case 1:
                    c2137g.m9528A();
                    float m9542n7 = c2137g.m9542n();
                    float m9552x = c2137g.m9552x();
                    float m9552x2 = c2137g.m9552x();
                    c2137g.m9528A();
                    if (Float.isNaN(m9542n7) || !c2137g.m9534f(')')) {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                    if (Float.isNaN(m9552x)) {
                        matrix.preRotate(m9542n7);
                        break;
                    } else if (!Float.isNaN(m9552x2)) {
                        matrix.preRotate(m9542n7, m9552x, m9552x2);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                case 2:
                    c2137g.m9528A();
                    float m9542n8 = c2137g.m9542n();
                    float m9552x3 = c2137g.m9552x();
                    c2137g.m9528A();
                    if (!Float.isNaN(m9542n8) && c2137g.m9534f(')')) {
                        if (!Float.isNaN(m9552x3)) {
                            matrix.preScale(m9542n8, m9552x3);
                            break;
                        } else {
                            matrix.preScale(m9542n8, m9542n8);
                            break;
                        }
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                    break;
                case 3:
                    c2137g.m9528A();
                    float m9542n9 = c2137g.m9542n();
                    c2137g.m9528A();
                    if (!Float.isNaN(m9542n9) && c2137g.m9534f(')')) {
                        matrix.preSkew((float) Math.tan(Math.toRadians(m9542n9)), 0.0f);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                    break;
                case 4:
                    c2137g.m9528A();
                    float m9542n10 = c2137g.m9542n();
                    c2137g.m9528A();
                    if (!Float.isNaN(m9542n10) && c2137g.m9534f(')')) {
                        matrix.preSkew(0.0f, (float) Math.tan(Math.toRadians(m9542n10)));
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                case 5:
                    c2137g.m9528A();
                    float m9542n11 = c2137g.m9542n();
                    float m9552x4 = c2137g.m9552x();
                    c2137g.m9528A();
                    if (!Float.isNaN(m9542n11) && c2137g.m9534f(')')) {
                        if (!Float.isNaN(m9552x4)) {
                            matrix.preTranslate(m9542n11, m9552x4);
                            break;
                        } else {
                            matrix.preTranslate(m9542n11, 0.0f);
                            break;
                        }
                    } else {
                        throw new SVGParseException("Invalid transform list: " + str);
                    }
                    break;
                default:
                    throw new SVGParseException("Invalid transform list fn: " + m9543o + MotionUtils.f31762d);
            }
            if (c2137g.m9536h()) {
                return matrix;
            }
            c2137g.m9554z();
        }
        return matrix;
    }

    /* renamed from: L */
    public final void m9466L(SVG.C2110r c2110r, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                c2110r.f15993q = m9442p0(trim);
            } else if (i2 == 2) {
                c2110r.f15994r = m9442p0(trim);
            } else if (i2 == 3) {
                SVG.C2104o m9442p0 = m9442p0(trim);
                c2110r.f15995s = m9442p0;
                if (m9442p0.m9389g()) {
                    throw new SVGParseException("Invalid <mask> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                SVG.C2104o m9442p02 = m9442p0(trim);
                c2110r.f15996t = m9442p02;
                if (m9442p02.m9389g()) {
                    throw new SVGParseException("Invalid <mask> element. height cannot be negative");
                }
            } else if (i2 != 43) {
                if (i2 != 44) {
                    continue;
                } else if ("objectBoundingBox".equals(trim)) {
                    c2110r.f15992p = Boolean.FALSE;
                } else {
                    if (!"userSpaceOnUse".equals(trim)) {
                        throw new SVGParseException("Invalid value for attribute maskContentUnits");
                    }
                    c2110r.f15992p = Boolean.TRUE;
                }
            } else if ("objectBoundingBox".equals(trim)) {
                c2110r.f15991o = Boolean.FALSE;
            } else {
                if (!"userSpaceOnUse".equals(trim)) {
                    throw new SVGParseException("Invalid value for attribute maskUnits");
                }
                c2110r.f15991o = Boolean.TRUE;
            }
        }
    }

    /* renamed from: L0 */
    public final void m9467L0(InputStream inputStream) throws SVGParseException {
        Log.d(f16038j, "Falling back to SAX parser");
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            newInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            C2136f c2136f = new C2136f(this, null);
            xMLReader.setContentHandler(c2136f);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", c2136f);
            xMLReader.parse(new InputSource(inputStream));
        } catch (IOException e) {
            throw new SVGParseException("Stream error", e);
        } catch (ParserConfigurationException e2) {
            throw new SVGParseException("XML parser problem", e2);
        } catch (SAXException e3) {
            throw new SVGParseException("SVG parse error", e3);
        }
    }

    /* renamed from: M */
    public final void m9468M(SVG.C2116u c2116u, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 8) {
                c2116u.f16002o = m9450v0(trim);
            } else if (i2 != 9) {
                continue;
            } else {
                Float valueOf = Float.valueOf(m9433g0(trim));
                c2116u.f16003p = valueOf;
                if (valueOf.floatValue() < 0.0f) {
                    throw new SVGParseException("Invalid <path> element. pathLength cannot be negative");
                }
            }
        }
    }

    /* renamed from: M0 */
    public final void m9469M0(InputStream inputStream, boolean z) throws SVGParseException {
        try {
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                C2138h c2138h = new C2138h(newPullParser);
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-docdecl", false);
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                newPullParser.setInput(inputStream, null);
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.nextToken()) {
                    if (eventType == 0) {
                        m9488X0();
                    } else if (eventType == 8) {
                        Log.d(f16038j, "PROC INSTR: " + newPullParser.getText());
                        C2137g c2137g = new C2137g(newPullParser.getText());
                        m9517s(c2137g.m9546r(), m9522y0(c2137g));
                    } else if (eventType != 10) {
                        if (eventType == 2) {
                            String name = newPullParser.getName();
                            if (newPullParser.getPrefix() != null) {
                                name = newPullParser.getPrefix() + ':' + name;
                            }
                            m9490Y0(newPullParser.getNamespace(), newPullParser.getName(), name, c2138h);
                        } else if (eventType == 3) {
                            String name2 = newPullParser.getName();
                            if (newPullParser.getPrefix() != null) {
                                name2 = newPullParser.getPrefix() + ':' + name2;
                            }
                            m9515q(newPullParser.getNamespace(), newPullParser.getName(), name2);
                        } else if (eventType == 4) {
                            int[] iArr = new int[2];
                            m9499f1(newPullParser.getTextCharacters(iArr), iArr[0], iArr[1]);
                        } else if (eventType == 5) {
                            m9497d1(newPullParser.getText());
                        }
                    } else if (z && this.f16054a.m9355k() == null && newPullParser.getText().contains("<!ENTITY ")) {
                        try {
                            Log.d(f16038j, "Switching to SAX parser to process entities");
                            inputStream.reset();
                            m9467L0(inputStream);
                            return;
                        } catch (IOException unused) {
                            Log.w(f16038j, "Detected internal entity definitions, but could not parse them.");
                            return;
                        }
                    }
                }
                m9514p();
            } catch (IOException e) {
                throw new SVGParseException("Stream error", e);
            }
        } catch (XmlPullParserException e2) {
            throw new SVGParseException("XML parser problem", e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cf, code lost:
    
        continue;
     */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9470N(com.caverock.androidsvg.SVG.C2122x r6, org.xml.sax.Attributes r7) throws com.caverock.androidsvg.SVGParseException {
        /*
            r5 = this;
            r0 = 0
        L1:
            int r1 = r7.getLength()
            if (r0 >= r1) goto Ld3
            java.lang.String r1 = r7.getValue(r0)
            java.lang.String r1 = r1.trim()
            int[] r2 = com.caverock.androidsvg.SVGParser.C2131a.f16082b
            java.lang.String r3 = r7.getLocalName(r0)
            com.caverock.androidsvg.SVGParser$SVGAttr r3 = com.caverock.androidsvg.SVGParser.SVGAttr.fromString(r3)
            int r3 = r3.ordinal()
            r2 = r2[r3]
            r3 = 1
            if (r2 == r3) goto Lc9
            r3 = 2
            if (r2 == r3) goto Lc2
            r3 = 3
            if (r2 == r3) goto Lad
            r3 = 4
            if (r2 == r3) goto L98
            r3 = 6
            if (r2 == r3) goto L7d
            java.lang.String r3 = "userSpaceOnUse"
            java.lang.String r4 = "objectBoundingBox"
            switch(r2) {
                case 40: goto L5f;
                case 41: goto L3f;
                case 42: goto L37;
                default: goto L35;
            }
        L35:
            goto Lcf
        L37:
            android.graphics.Matrix r1 = r5.m9465K0(r1)
            r6.f16017s = r1
            goto Lcf
        L3f:
            boolean r2 = r4.equals(r1)
            if (r2 == 0) goto L4b
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r6.f16016r = r1
            goto Lcf
        L4b:
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L57
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r6.f16016r = r1
            goto Lcf
        L57:
            com.caverock.androidsvg.SVGParseException r5 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r6 = "Invalid value for attribute patternContentUnits"
            r5.<init>(r6)
            throw r5
        L5f:
            boolean r2 = r4.equals(r1)
            if (r2 == 0) goto L6a
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r6.f16015q = r1
            goto Lcf
        L6a:
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L75
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r6.f16015q = r1
            goto Lcf
        L75:
            com.caverock.androidsvg.SVGParseException r5 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r6 = "Invalid value for attribute patternUnits"
            r5.<init>(r6)
            throw r5
        L7d:
            java.lang.String r2 = ""
            java.lang.String r3 = r7.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L95
            java.lang.String r2 = "http://www.w3.org/1999/xlink"
            java.lang.String r3 = r7.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Lcf
        L95:
            r6.f16022x = r1
            goto Lcf
        L98:
            com.caverock.androidsvg.SVG$o r1 = m9442p0(r1)
            r6.f16021w = r1
            boolean r1 = r1.m9389g()
            if (r1 != 0) goto La5
            goto Lcf
        La5:
            com.caverock.androidsvg.SVGParseException r5 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r6 = "Invalid <pattern> element. height cannot be negative"
            r5.<init>(r6)
            throw r5
        Lad:
            com.caverock.androidsvg.SVG$o r1 = m9442p0(r1)
            r6.f16020v = r1
            boolean r1 = r1.m9389g()
            if (r1 != 0) goto Lba
            goto Lcf
        Lba:
            com.caverock.androidsvg.SVGParseException r5 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r6 = "Invalid <pattern> element. width cannot be negative"
            r5.<init>(r6)
            throw r5
        Lc2:
            com.caverock.androidsvg.SVG$o r1 = m9442p0(r1)
            r6.f16019u = r1
            goto Lcf
        Lc9:
            com.caverock.androidsvg.SVG$o r1 = m9442p0(r1)
            r6.f16018t = r1
        Lcf:
            int r0 = r0 + 1
            goto L1
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.m9470N(com.caverock.androidsvg.SVG$x, org.xml.sax.Attributes):void");
    }

    /* renamed from: O */
    public final void m9471O(SVG.C2124y c2124y, Attributes attributes, String str) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.fromString(attributes.getLocalName(i)) == SVGAttr.points) {
                C2137g c2137g = new C2137g(attributes.getValue(i));
                ArrayList arrayList = new ArrayList();
                c2137g.m9528A();
                while (!c2137g.m9536h()) {
                    float m9542n = c2137g.m9542n();
                    if (Float.isNaN(m9542n)) {
                        throw new SVGParseException("Invalid <" + str + "> points attribute. Non-coordinate content found in list.");
                    }
                    c2137g.m9554z();
                    float m9542n2 = c2137g.m9542n();
                    if (Float.isNaN(m9542n2)) {
                        throw new SVGParseException("Invalid <" + str + "> points attribute. There should be an even number of coordinates.");
                    }
                    c2137g.m9554z();
                    arrayList.add(Float.valueOf(m9542n));
                    arrayList.add(Float.valueOf(m9542n2));
                }
                c2124y.f16026o = new float[arrayList.size()];
                Iterator it2 = arrayList.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    c2124y.f16026o[i2] = ((Float) it2.next()).floatValue();
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        continue;
     */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9472P(com.caverock.androidsvg.SVG.C2105o0 r4, org.xml.sax.Attributes r5) throws com.caverock.androidsvg.SVGParseException {
        /*
            r3 = this;
            r3 = 0
        L1:
            int r0 = r5.getLength()
            if (r3 >= r0) goto L5e
            java.lang.String r0 = r5.getValue(r3)
            java.lang.String r0 = r0.trim()
            int[] r1 = com.caverock.androidsvg.SVGParser.C2131a.f16082b
            java.lang.String r2 = r5.getLocalName(r3)
            com.caverock.androidsvg.SVGParser$SVGAttr r2 = com.caverock.androidsvg.SVGParser.SVGAttr.fromString(r2)
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 35
            if (r1 == r2) goto L55
            r2 = 36
            if (r1 == r2) goto L4e
            switch(r1) {
                case 12: goto L47;
                case 13: goto L40;
                case 14: goto L2b;
                default: goto L2a;
            }
        L2a:
            goto L5b
        L2b:
            com.caverock.androidsvg.SVG$o r0 = m9442p0(r0)
            r4.f15977o = r0
            boolean r0 = r0.m9389g()
            if (r0 != 0) goto L38
            goto L5b
        L38:
            com.caverock.androidsvg.SVGParseException r3 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r4 = "Invalid <radialGradient> element. r cannot be negative"
            r3.<init>(r4)
            throw r3
        L40:
            com.caverock.androidsvg.SVG$o r0 = m9442p0(r0)
            r4.f15976n = r0
            goto L5b
        L47:
            com.caverock.androidsvg.SVG$o r0 = m9442p0(r0)
            r4.f15975m = r0
            goto L5b
        L4e:
            com.caverock.androidsvg.SVG$o r0 = m9442p0(r0)
            r4.f15979q = r0
            goto L5b
        L55:
            com.caverock.androidsvg.SVG$o r0 = m9442p0(r0)
            r4.f15978p = r0
        L5b:
            int r3 = r3 + 1
            goto L1
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.m9472P(com.caverock.androidsvg.SVG$o0, org.xml.sax.Attributes):void");
    }

    /* renamed from: P0 */
    public final void m9473P0(Attributes attributes) throws SVGParseException {
        m9508l("<path>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2116u c2116u = new SVG.C2116u();
        c2116u.f15964a = this.f16054a;
        c2116u.f15965b = this.f16055b;
        m9458E(c2116u, attributes);
        m9480T(c2116u, attributes);
        m9487X(c2116u, attributes);
        m9457D(c2116u, attributes);
        m9468M(c2116u, attributes);
        this.f16055b.mo9371k(c2116u);
    }

    /* renamed from: Q */
    public final void m9474Q(SVG.C2074a0 c2074a0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                c2074a0.f15896o = m9442p0(trim);
            } else if (i2 == 2) {
                c2074a0.f15897p = m9442p0(trim);
            } else if (i2 == 3) {
                SVG.C2104o m9442p0 = m9442p0(trim);
                c2074a0.f15898q = m9442p0;
                if (m9442p0.m9389g()) {
                    throw new SVGParseException("Invalid <rect> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                SVG.C2104o m9442p02 = m9442p0(trim);
                c2074a0.f15899r = m9442p02;
                if (m9442p02.m9389g()) {
                    throw new SVGParseException("Invalid <rect> element. height cannot be negative");
                }
            } else if (i2 == 10) {
                SVG.C2104o m9442p03 = m9442p0(trim);
                c2074a0.f15900s = m9442p03;
                if (m9442p03.m9389g()) {
                    throw new SVGParseException("Invalid <rect> element. rx cannot be negative");
                }
            } else if (i2 != 11) {
                continue;
            } else {
                SVG.C2104o m9442p04 = m9442p0(trim);
                c2074a0.f15901t = m9442p04;
                if (m9442p04.m9389g()) {
                    throw new SVGParseException("Invalid <rect> element. ry cannot be negative");
                }
            }
        }
    }

    /* renamed from: Q0 */
    public final void m9475Q0(Attributes attributes) throws SVGParseException {
        m9508l("<pattern>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2122x c2122x = new SVG.C2122x();
        c2122x.f15964a = this.f16054a;
        c2122x.f15965b = this.f16055b;
        m9458E(c2122x, attributes);
        m9480T(c2122x, attributes);
        m9457D(c2122x, attributes);
        m9491Z(c2122x, attributes);
        m9470N(c2122x, attributes);
        this.f16055b.mo9371k(c2122x);
        this.f16055b = c2122x;
    }

    /* renamed from: R */
    public final void m9476R(SVG.C2083d0 c2083d0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                c2083d0.f15922q = m9442p0(trim);
            } else if (i2 == 2) {
                c2083d0.f15923r = m9442p0(trim);
            } else if (i2 == 3) {
                SVG.C2104o m9442p0 = m9442p0(trim);
                c2083d0.f15924s = m9442p0;
                if (m9442p0.m9389g()) {
                    throw new SVGParseException("Invalid <svg> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                SVG.C2104o m9442p02 = m9442p0(trim);
                c2083d0.f15925t = m9442p02;
                if (m9442p02.m9389g()) {
                    throw new SVGParseException("Invalid <svg> element. height cannot be negative");
                }
            } else if (i2 == 5) {
                c2083d0.f15926u = trim;
            }
        }
    }

    /* renamed from: R0 */
    public final void m9477R0(Attributes attributes) throws SVGParseException {
        m9508l("<polygon>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2124y c2126z = new SVG.C2126z();
        c2126z.f15964a = this.f16054a;
        c2126z.f15965b = this.f16055b;
        m9458E(c2126z, attributes);
        m9480T(c2126z, attributes);
        m9487X(c2126z, attributes);
        m9457D(c2126z, attributes);
        m9471O(c2126z, attributes, "polygon");
        this.f16055b.mo9371k(c2126z);
    }

    /* renamed from: S */
    public final void m9478S(SVG.C2080c0 c2080c0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()] == 37) {
                c2080c0.f15917h = m9513o0(trim);
            }
        }
    }

    /* renamed from: S0 */
    public final void m9479S0(Attributes attributes) throws SVGParseException {
        m9508l("<polyline>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2124y c2124y = new SVG.C2124y();
        c2124y.f15964a = this.f16054a;
        c2124y.f15965b = this.f16055b;
        m9458E(c2124y, attributes);
        m9480T(c2124y, attributes);
        m9487X(c2124y, attributes);
        m9457D(c2124y, attributes);
        m9471O(c2124y, attributes, UniversalShapeTypeConst.POLYLINE);
        this.f16055b.mo9371k(c2124y);
    }

    /* renamed from: T */
    public final void m9480T(SVG.AbstractC2095j0 abstractC2095j0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (trim.length() != 0) {
                int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
                if (i2 == 45) {
                    m9413F0(abstractC2095j0, trim);
                } else if (i2 != 46) {
                    if (abstractC2095j0.f15955e == null) {
                        abstractC2095j0.f15955e = new SVG.Style();
                    }
                    m9420T0(abstractC2095j0.f15955e, attributes.getLocalName(i), attributes.getValue(i).trim());
                } else {
                    abstractC2095j0.f15957g = CSSParser.m9299f(trim);
                }
            }
        }
    }

    /* renamed from: U */
    public final void m9481U(SVG.C2113s0 c2113s0, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()] == 6 && ("".equals(attributes.getURI(i)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i)))) {
                c2113s0.f15997o = trim;
            }
        }
    }

    /* renamed from: U0 */
    public final void m9482U0(Attributes attributes) throws SVGParseException {
        m9508l("<radialGradient>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2105o0 c2105o0 = new SVG.C2105o0();
        c2105o0.f15964a = this.f16054a;
        c2105o0.f15965b = this.f16055b;
        m9458E(c2105o0, attributes);
        m9480T(c2105o0, attributes);
        m9460G(c2105o0, attributes);
        m9472P(c2105o0, attributes);
        this.f16055b.mo9371k(c2105o0);
        this.f16055b = c2105o0;
    }

    /* renamed from: V */
    public final void m9483V(SVG.C2123x0 c2123x0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 != 6) {
                if (i2 == 39) {
                    c2123x0.f16024p = m9442p0(trim);
                }
            } else if ("".equals(attributes.getURI(i)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                c2123x0.f16023o = trim;
            }
        }
    }

    /* renamed from: V0 */
    public final void m9484V0(Attributes attributes) throws SVGParseException {
        m9508l("<rect>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2074a0 c2074a0 = new SVG.C2074a0();
        c2074a0.f15964a = this.f16054a;
        c2074a0.f15965b = this.f16055b;
        m9458E(c2074a0, attributes);
        m9480T(c2074a0, attributes);
        m9487X(c2074a0, attributes);
        m9457D(c2074a0, attributes);
        m9474Q(c2074a0, attributes);
        this.f16055b.mo9371k(c2074a0);
    }

    /* renamed from: W */
    public final void m9485W(SVG.AbstractC2125y0 abstractC2125y0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                abstractC2125y0.f16027o = m9443q0(trim);
            } else if (i2 == 2) {
                abstractC2125y0.f16028p = m9443q0(trim);
            } else if (i2 == 19) {
                abstractC2125y0.f16029q = m9443q0(trim);
            } else if (i2 == 20) {
                abstractC2125y0.f16030r = m9443q0(trim);
            }
        }
    }

    /* renamed from: W0 */
    public final void m9486W0(Attributes attributes) throws SVGParseException {
        m9508l("<solidColor>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2077b0 c2077b0 = new SVG.C2077b0();
        c2077b0.f15964a = this.f16054a;
        c2077b0.f15965b = this.f16055b;
        m9458E(c2077b0, attributes);
        m9480T(c2077b0, attributes);
        this.f16055b.mo9371k(c2077b0);
        this.f16055b = c2077b0;
    }

    /* renamed from: X */
    public final void m9487X(SVG.InterfaceC2100m interfaceC2100m, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.fromString(attributes.getLocalName(i)) == SVGAttr.transform) {
                interfaceC2100m.mo9382l(m9465K0(attributes.getValue(i)));
            }
        }
    }

    /* renamed from: X0 */
    public final void m9488X0() {
        this.f16054a = new SVG();
    }

    /* renamed from: Y */
    public final void m9489Y(SVG.C2078b1 c2078b1, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                c2078b1.f15909q = m9442p0(trim);
            } else if (i2 == 2) {
                c2078b1.f15910r = m9442p0(trim);
            } else if (i2 == 3) {
                SVG.C2104o m9442p0 = m9442p0(trim);
                c2078b1.f15911s = m9442p0;
                if (m9442p0.m9389g()) {
                    throw new SVGParseException("Invalid <use> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                SVG.C2104o m9442p02 = m9442p0(trim);
                c2078b1.f15912t = m9442p02;
                if (m9442p02.m9389g()) {
                    throw new SVGParseException("Invalid <use> element. height cannot be negative");
                }
            } else if (i2 == 6 && ("".equals(attributes.getURI(i)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i)))) {
                c2078b1.f15908p = trim;
            }
        }
    }

    /* renamed from: Y0 */
    public final void m9490Y0(String str, String str2, String str3, Attributes attributes) throws SVGParseException {
        if (this.f16056c) {
            this.f16057d++;
            return;
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            if (str2.length() <= 0) {
                str2 = str3;
            }
            SVGElem fromString = SVGElem.fromString(str2);
            switch (C2131a.f16081a[fromString.ordinal()]) {
                case 1:
                    m9495b1(attributes);
                    return;
                case 2:
                case 3:
                    m9516r(attributes);
                    return;
                case 4:
                    m9510m(attributes);
                    return;
                case 5:
                    m9505j1(attributes);
                    return;
                case 6:
                    m9473P0(attributes);
                    return;
                case 7:
                    m9484V0(attributes);
                    return;
                case 8:
                    m9503i(attributes);
                    return;
                case 9:
                    m9512o(attributes);
                    return;
                case 10:
                    m9519w(attributes);
                    return;
                case 11:
                    m9479S0(attributes);
                    return;
                case 12:
                    m9477R0(attributes);
                    return;
                case 13:
                    m9498e1(attributes);
                    return;
                case 14:
                    m9504i1(attributes);
                    return;
                case 15:
                    m9502h1(attributes);
                    return;
                case 16:
                    m9509l1(attributes);
                    return;
                case 17:
                    m9496c1(attributes);
                    return;
                case 18:
                    m9521y(attributes);
                    return;
                case 19:
                    m9520x(attributes);
                    return;
                case 20:
                    m9482U0(attributes);
                    return;
                case 21:
                    m9492Z0(attributes);
                    return;
                case 22:
                case 23:
                    this.f16058e = true;
                    this.f16059f = fromString;
                    return;
                case 24:
                    m9506k(attributes);
                    return;
                case 25:
                    m9500g1(attributes);
                    return;
                case 26:
                    m9475Q0(attributes);
                    return;
                case 27:
                    m9518v(attributes);
                    return;
                case 28:
                    m9507k1(attributes);
                    return;
                case 29:
                    m9523z(attributes);
                    return;
                case 30:
                    m9494a1(attributes);
                    return;
                case 31:
                    m9486W0(attributes);
                    return;
                default:
                    this.f16056c = true;
                    this.f16057d = 1;
                    return;
            }
        }
    }

    /* renamed from: Z */
    public final void m9491Z(SVG.AbstractC2107p0 abstractC2107p0, Attributes attributes) throws SVGParseException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 7) {
                m9452x0(abstractC2107p0, trim);
            } else if (i2 == 87) {
                abstractC2107p0.f15984p = m9419O0(trim);
            }
        }
    }

    /* renamed from: Z0 */
    public final void m9492Z0(Attributes attributes) throws SVGParseException {
        m9508l("<stop>", new Object[0]);
        SVG.InterfaceC2091h0 interfaceC2091h0 = this.f16055b;
        if (interfaceC2091h0 == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        if (!(interfaceC2091h0 instanceof SVG.AbstractC2094j)) {
            throw new SVGParseException("Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements.");
        }
        SVG.C2080c0 c2080c0 = new SVG.C2080c0();
        c2080c0.f15964a = this.f16054a;
        c2080c0.f15965b = this.f16055b;
        m9458E(c2080c0, attributes);
        m9480T(c2080c0, attributes);
        m9478S(c2080c0, attributes);
        this.f16055b.mo9371k(c2080c0);
        this.f16055b = c2080c0;
    }

    /* renamed from: a0 */
    public final void m9493a0(String str) {
        this.f16054a.m9346a(new CSSParser(CSSParser.MediaType.screen, CSSParser.Source.Document).m9306d(str));
    }

    /* renamed from: a1 */
    public final void m9494a1(Attributes attributes) throws SVGParseException {
        m9508l("<style>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        String str = "all";
        boolean z = true;
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C2131a.f16082b[SVGAttr.fromString(attributes.getLocalName(i)).ordinal()];
            if (i2 == 88) {
                z = trim.equals(CSSParser.f15748e);
            } else if (i2 == 89) {
                str = trim;
            }
        }
        if (z && CSSParser.m9297b(str, CSSParser.MediaType.screen)) {
            this.f16061h = true;
        } else {
            this.f16056c = true;
            this.f16057d = 1;
        }
    }

    /* renamed from: b1 */
    public final void m9495b1(Attributes attributes) throws SVGParseException {
        m9508l("<svg>", new Object[0]);
        SVG.C2083d0 c2083d0 = new SVG.C2083d0();
        c2083d0.f15964a = this.f16054a;
        c2083d0.f15965b = this.f16055b;
        m9458E(c2083d0, attributes);
        m9480T(c2083d0, attributes);
        m9457D(c2083d0, attributes);
        m9491Z(c2083d0, attributes);
        m9476R(c2083d0, attributes);
        SVG.InterfaceC2091h0 interfaceC2091h0 = this.f16055b;
        if (interfaceC2091h0 == null) {
            this.f16054a.m9359o(c2083d0);
        } else {
            interfaceC2091h0.mo9371k(c2083d0);
        }
        this.f16055b = c2083d0;
    }

    /* renamed from: c1 */
    public final void m9496c1(Attributes attributes) throws SVGParseException {
        m9508l("<symbol>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.AbstractC2107p0 c2111r0 = new SVG.C2111r0();
        c2111r0.f15964a = this.f16054a;
        c2111r0.f15965b = this.f16055b;
        m9458E(c2111r0, attributes);
        m9480T(c2111r0, attributes);
        m9457D(c2111r0, attributes);
        m9491Z(c2111r0, attributes);
        this.f16055b.mo9371k(c2111r0);
        this.f16055b = c2111r0;
    }

    /* renamed from: d1 */
    public final void m9497d1(String str) throws SVGParseException {
        if (this.f16056c) {
            return;
        }
        if (this.f16058e) {
            if (this.f16060g == null) {
                this.f16060g = new StringBuilder(str.length());
            }
            this.f16060g.append(str);
        } else if (this.f16061h) {
            if (this.f16062i == null) {
                this.f16062i = new StringBuilder(str.length());
            }
            this.f16062i.append(str);
        } else if (this.f16055b instanceof SVG.AbstractC2121w0) {
            m9501h(str);
        }
    }

    /* renamed from: e1 */
    public final void m9498e1(Attributes attributes) throws SVGParseException {
        m9508l("<text>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2117u0 c2117u0 = new SVG.C2117u0();
        c2117u0.f15964a = this.f16054a;
        c2117u0.f15965b = this.f16055b;
        m9458E(c2117u0, attributes);
        m9480T(c2117u0, attributes);
        m9487X(c2117u0, attributes);
        m9457D(c2117u0, attributes);
        m9485W(c2117u0, attributes);
        this.f16055b.mo9371k(c2117u0);
        this.f16055b = c2117u0;
    }

    /* renamed from: f1 */
    public final void m9499f1(char[] cArr, int i, int i2) throws SVGParseException {
        if (this.f16056c) {
            return;
        }
        if (this.f16058e) {
            if (this.f16060g == null) {
                this.f16060g = new StringBuilder(i2);
            }
            this.f16060g.append(cArr, i, i2);
        } else if (this.f16061h) {
            if (this.f16062i == null) {
                this.f16062i = new StringBuilder(i2);
            }
            this.f16062i.append(cArr, i, i2);
        } else if (this.f16055b instanceof SVG.AbstractC2121w0) {
            m9501h(new String(cArr, i, i2));
        }
    }

    /* renamed from: g1 */
    public final void m9500g1(Attributes attributes) throws SVGParseException {
        m9508l("<textPath>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2123x0 c2123x0 = new SVG.C2123x0();
        c2123x0.f15964a = this.f16054a;
        c2123x0.f15965b = this.f16055b;
        m9458E(c2123x0, attributes);
        m9480T(c2123x0, attributes);
        m9457D(c2123x0, attributes);
        m9483V(c2123x0, attributes);
        this.f16055b.mo9371k(c2123x0);
        this.f16055b = c2123x0;
        SVG.InterfaceC2091h0 interfaceC2091h0 = c2123x0.f15965b;
        if (interfaceC2091h0 instanceof SVG.InterfaceC2127z0) {
            c2123x0.mo9365e((SVG.InterfaceC2127z0) interfaceC2091h0);
        } else {
            c2123x0.mo9365e(((SVG.InterfaceC2119v0) interfaceC2091h0).mo9364a());
        }
    }

    /* renamed from: h */
    public final void m9501h(String str) throws SVGParseException {
        SVG.AbstractC2087f0 abstractC2087f0 = (SVG.AbstractC2087f0) this.f16055b;
        int size = abstractC2087f0.f15931i.size();
        SVG.C2099l0 c2099l0 = size == 0 ? null : abstractC2087f0.f15931i.get(size - 1);
        if (!(c2099l0 instanceof SVG.C2075a1)) {
            this.f16055b.mo9371k(new SVG.C2075a1(str));
            return;
        }
        StringBuilder sb = new StringBuilder();
        SVG.C2075a1 c2075a1 = (SVG.C2075a1) c2099l0;
        sb.append(c2075a1.f15902c);
        sb.append(str);
        c2075a1.f15902c = sb.toString();
    }

    /* renamed from: h1 */
    public final void m9502h1(Attributes attributes) throws SVGParseException {
        m9508l("<tref>", new Object[0]);
        SVG.InterfaceC2091h0 interfaceC2091h0 = this.f16055b;
        if (interfaceC2091h0 == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        if (!(interfaceC2091h0 instanceof SVG.AbstractC2121w0)) {
            throw new SVGParseException("Invalid document. <tref> elements are only valid inside <text> or <tspan> elements.");
        }
        SVG.C2113s0 c2113s0 = new SVG.C2113s0();
        c2113s0.f15964a = this.f16054a;
        c2113s0.f15965b = this.f16055b;
        m9458E(c2113s0, attributes);
        m9480T(c2113s0, attributes);
        m9457D(c2113s0, attributes);
        m9481U(c2113s0, attributes);
        this.f16055b.mo9371k(c2113s0);
        SVG.InterfaceC2091h0 interfaceC2091h02 = c2113s0.f15965b;
        if (interfaceC2091h02 instanceof SVG.InterfaceC2127z0) {
            c2113s0.mo9365e((SVG.InterfaceC2127z0) interfaceC2091h02);
        } else {
            c2113s0.mo9365e(((SVG.InterfaceC2119v0) interfaceC2091h02).mo9364a());
        }
    }

    /* renamed from: i */
    public final void m9503i(Attributes attributes) throws SVGParseException {
        m9508l("<circle>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2082d c2082d = new SVG.C2082d();
        c2082d.f15964a = this.f16054a;
        c2082d.f15965b = this.f16055b;
        m9458E(c2082d, attributes);
        m9480T(c2082d, attributes);
        m9487X(c2082d, attributes);
        m9457D(c2082d, attributes);
        m9455B(c2082d, attributes);
        this.f16055b.mo9371k(c2082d);
    }

    /* renamed from: i1 */
    public final void m9504i1(Attributes attributes) throws SVGParseException {
        m9508l("<tspan>", new Object[0]);
        SVG.InterfaceC2091h0 interfaceC2091h0 = this.f16055b;
        if (interfaceC2091h0 == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        if (!(interfaceC2091h0 instanceof SVG.AbstractC2121w0)) {
            throw new SVGParseException("Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements.");
        }
        SVG.C2115t0 c2115t0 = new SVG.C2115t0();
        c2115t0.f15964a = this.f16054a;
        c2115t0.f15965b = this.f16055b;
        m9458E(c2115t0, attributes);
        m9480T(c2115t0, attributes);
        m9457D(c2115t0, attributes);
        m9485W(c2115t0, attributes);
        this.f16055b.mo9371k(c2115t0);
        this.f16055b = c2115t0;
        SVG.InterfaceC2091h0 interfaceC2091h02 = c2115t0.f15965b;
        if (interfaceC2091h02 instanceof SVG.InterfaceC2127z0) {
            c2115t0.mo9365e((SVG.InterfaceC2127z0) interfaceC2091h02);
        } else {
            c2115t0.mo9365e(((SVG.InterfaceC2119v0) interfaceC2091h02).mo9364a());
        }
    }

    /* renamed from: j1 */
    public final void m9505j1(Attributes attributes) throws SVGParseException {
        m9508l("<use>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2078b1 c2078b1 = new SVG.C2078b1();
        c2078b1.f15964a = this.f16054a;
        c2078b1.f15965b = this.f16055b;
        m9458E(c2078b1, attributes);
        m9480T(c2078b1, attributes);
        m9487X(c2078b1, attributes);
        m9457D(c2078b1, attributes);
        m9489Y(c2078b1, attributes);
        this.f16055b.mo9371k(c2078b1);
        this.f16055b = c2078b1;
    }

    /* renamed from: k */
    public final void m9506k(Attributes attributes) throws SVGParseException {
        m9508l("<clipPath>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2084e c2084e = new SVG.C2084e();
        c2084e.f15964a = this.f16054a;
        c2084e.f15965b = this.f16055b;
        m9458E(c2084e, attributes);
        m9480T(c2084e, attributes);
        m9487X(c2084e, attributes);
        m9457D(c2084e, attributes);
        m9456C(c2084e, attributes);
        this.f16055b.mo9371k(c2084e);
        this.f16055b = c2084e;
    }

    /* renamed from: k1 */
    public final void m9507k1(Attributes attributes) throws SVGParseException {
        m9508l("<view>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.AbstractC2107p0 c2081c1 = new SVG.C2081c1();
        c2081c1.f15964a = this.f16054a;
        c2081c1.f15965b = this.f16055b;
        m9458E(c2081c1, attributes);
        m9457D(c2081c1, attributes);
        m9491Z(c2081c1, attributes);
        this.f16055b.mo9371k(c2081c1);
        this.f16055b = c2081c1;
    }

    /* renamed from: l */
    public final void m9508l(String str, Object... objArr) {
    }

    /* renamed from: l1 */
    public final void m9509l1(Attributes attributes) throws SVGParseException {
        m9508l("<switch>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2109q0 c2109q0 = new SVG.C2109q0();
        c2109q0.f15964a = this.f16054a;
        c2109q0.f15965b = this.f16055b;
        m9458E(c2109q0, attributes);
        m9480T(c2109q0, attributes);
        m9487X(c2109q0, attributes);
        m9457D(c2109q0, attributes);
        this.f16055b.mo9371k(c2109q0);
        this.f16055b = c2109q0;
    }

    /* renamed from: m */
    public final void m9510m(Attributes attributes) throws SVGParseException {
        m9508l("<defs>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2090h c2090h = new SVG.C2090h();
        c2090h.f15964a = this.f16054a;
        c2090h.f15965b = this.f16055b;
        m9458E(c2090h, attributes);
        m9480T(c2090h, attributes);
        m9487X(c2090h, attributes);
        this.f16055b.mo9371k(c2090h);
        this.f16055b = c2090h;
    }

    /* renamed from: n */
    public final void m9511n(SVG.C2099l0 c2099l0, String str) {
        Log.d(f16038j, str + c2099l0);
        if (c2099l0 instanceof SVG.AbstractC2087f0) {
            String str2 = str + GlideException.C1935a.f14609h;
            Iterator<SVG.C2099l0> it2 = ((SVG.AbstractC2087f0) c2099l0).f15931i.iterator();
            while (it2.hasNext()) {
                m9511n(it2.next(), str2);
            }
        }
    }

    /* renamed from: o */
    public final void m9512o(Attributes attributes) throws SVGParseException {
        m9508l("<ellipse>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2092i c2092i = new SVG.C2092i();
        c2092i.f15964a = this.f16054a;
        c2092i.f15965b = this.f16055b;
        m9458E(c2092i, attributes);
        m9480T(c2092i, attributes);
        m9487X(c2092i, attributes);
        m9457D(c2092i, attributes);
        m9459F(c2092i, attributes);
        this.f16055b.mo9371k(c2092i);
    }

    /* renamed from: o0 */
    public final Float m9513o0(String str) throws SVGParseException {
        if (str.length() == 0) {
            throw new SVGParseException("Invalid offset value in <stop> (empty string)");
        }
        int length = str.length();
        boolean z = true;
        if (str.charAt(str.length() - 1) == '%') {
            length--;
        } else {
            z = false;
        }
        try {
            float m9434h0 = m9434h0(str, 0, length);
            float f = 100.0f;
            if (z) {
                m9434h0 /= 100.0f;
            }
            if (m9434h0 < 0.0f) {
                f = 0.0f;
            } else if (m9434h0 <= 100.0f) {
                f = m9434h0;
            }
            return Float.valueOf(f);
        } catch (NumberFormatException e) {
            throw new SVGParseException("Invalid offset value in <stop>: " + str, e);
        }
    }

    /* renamed from: p */
    public final void m9514p() {
    }

    /* renamed from: q */
    public final void m9515q(String str, String str2, String str3) throws SVGParseException {
        if (this.f16056c) {
            int i = this.f16057d - 1;
            this.f16057d = i;
            if (i == 0) {
                this.f16056c = false;
                return;
            }
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            if (str2.length() <= 0) {
                str2 = str3;
            }
            int i2 = C2131a.f16081a[SVGElem.fromString(str2).ordinal()];
            if (i2 != 1 && i2 != 2 && i2 != 4 && i2 != 5 && i2 != 13 && i2 != 14) {
                switch (i2) {
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 31:
                        break;
                    case 22:
                    case 23:
                        this.f16058e = false;
                        StringBuilder sb = this.f16060g;
                        if (sb != null) {
                            SVGElem sVGElem = this.f16059f;
                            if (sVGElem == SVGElem.title) {
                                this.f16054a.m9360p(sb.toString());
                            } else if (sVGElem == SVGElem.desc) {
                                this.f16054a.m9358n(sb.toString());
                            }
                            this.f16060g.setLength(0);
                            return;
                        }
                        return;
                    case 30:
                        StringBuilder sb2 = this.f16062i;
                        if (sb2 != null) {
                            this.f16061h = false;
                            m9493a0(sb2.toString());
                            this.f16062i.setLength(0);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
            this.f16055b = ((SVG.C2099l0) this.f16055b).f15965b;
        }
    }

    /* renamed from: r */
    public final void m9516r(Attributes attributes) throws SVGParseException {
        m9508l("<g>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2098l c2098l = new SVG.C2098l();
        c2098l.f15964a = this.f16054a;
        c2098l.f15965b = this.f16055b;
        m9458E(c2098l, attributes);
        m9480T(c2098l, attributes);
        m9487X(c2098l, attributes);
        m9457D(c2098l, attributes);
        this.f16055b.mo9371k(c2098l);
        this.f16055b = c2098l;
    }

    /* renamed from: s */
    public final void m9517s(String str, Map<String, String> map) {
        String str2;
        String resolveCSSStyleSheet;
        if (!str.equals(f16042n) || SVG.m9345j() == null) {
            return;
        }
        if (map.get("type") == null || CSSParser.f15748e.equals(map.get("type"))) {
            if ((map.get(f16044p) != null && !f16048t.equals(map.get(f16044p))) || (str2 = map.get("href")) == null || (resolveCSSStyleSheet = SVG.m9345j().resolveCSSStyleSheet(str2)) == null) {
                return;
            }
            String str3 = map.get(f16046r);
            if (str3 != null && !"all".equals(str3.trim())) {
                resolveCSSStyleSheet = "@media " + str3 + " { " + resolveCSSStyleSheet + "}";
            }
            m9493a0(resolveCSSStyleSheet);
        }
    }

    /* renamed from: v */
    public final void m9518v(Attributes attributes) throws SVGParseException {
        m9508l("<image>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2102n c2102n = new SVG.C2102n();
        c2102n.f15964a = this.f16054a;
        c2102n.f15965b = this.f16055b;
        m9458E(c2102n, attributes);
        m9480T(c2102n, attributes);
        m9487X(c2102n, attributes);
        m9457D(c2102n, attributes);
        m9461H(c2102n, attributes);
        this.f16055b.mo9371k(c2102n);
        this.f16055b = c2102n;
    }

    /* renamed from: w */
    public final void m9519w(Attributes attributes) throws SVGParseException {
        m9508l("<line>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2106p c2106p = new SVG.C2106p();
        c2106p.f15964a = this.f16054a;
        c2106p.f15965b = this.f16055b;
        m9458E(c2106p, attributes);
        m9480T(c2106p, attributes);
        m9487X(c2106p, attributes);
        m9457D(c2106p, attributes);
        m9462I(c2106p, attributes);
        this.f16055b.mo9371k(c2106p);
    }

    /* renamed from: x */
    public final void m9520x(Attributes attributes) throws SVGParseException {
        m9508l("<linearGradient>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2097k0 c2097k0 = new SVG.C2097k0();
        c2097k0.f15964a = this.f16054a;
        c2097k0.f15965b = this.f16055b;
        m9458E(c2097k0, attributes);
        m9480T(c2097k0, attributes);
        m9460G(c2097k0, attributes);
        m9463J(c2097k0, attributes);
        this.f16055b.mo9371k(c2097k0);
        this.f16055b = c2097k0;
    }

    /* renamed from: y */
    public final void m9521y(Attributes attributes) throws SVGParseException {
        m9508l("<marker>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2108q c2108q = new SVG.C2108q();
        c2108q.f15964a = this.f16054a;
        c2108q.f15965b = this.f16055b;
        m9458E(c2108q, attributes);
        m9480T(c2108q, attributes);
        m9457D(c2108q, attributes);
        m9491Z(c2108q, attributes);
        m9464K(c2108q, attributes);
        this.f16055b.mo9371k(c2108q);
        this.f16055b = c2108q;
    }

    /* renamed from: y0 */
    public final Map<String, String> m9522y0(C2137g c2137g) {
        HashMap hashMap = new HashMap();
        c2137g.m9528A();
        String m9547s = c2137g.m9547s('=');
        while (m9547s != null) {
            c2137g.m9534f('=');
            hashMap.put(m9547s, c2137g.m9545q());
            c2137g.m9528A();
            m9547s = c2137g.m9547s('=');
        }
        return hashMap;
    }

    /* renamed from: z */
    public final void m9523z(Attributes attributes) throws SVGParseException {
        m9508l("<mask>", new Object[0]);
        if (this.f16055b == null) {
            throw new SVGParseException("Invalid document. Root element must be <svg>");
        }
        SVG.C2110r c2110r = new SVG.C2110r();
        c2110r.f15964a = this.f16054a;
        c2110r.f15965b = this.f16055b;
        m9458E(c2110r, attributes);
        m9480T(c2110r, attributes);
        m9457D(c2110r, attributes);
        m9466L(c2110r, attributes);
        this.f16055b.mo9371k(c2110r);
        this.f16055b = c2110r;
    }
}
