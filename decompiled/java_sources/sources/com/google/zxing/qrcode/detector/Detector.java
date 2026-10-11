package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import com.sunia.HTREnginev2.C14494u9;
import java.util.Map;

/* loaded from: classes4.dex */
public class Detector {

    /* renamed from: a */
    public final BitMatrix f38765a;

    /* renamed from: b */
    public ResultPointCallback f38766b;

    public Detector(BitMatrix bitMatrix) {
        this.f38765a = bitMatrix;
    }

    /* renamed from: b */
    public static int m30768b(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f) throws NotFoundException {
        int round = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f)) / 2) + 7;
        int i = round & 3;
        if (i == 0) {
            return round + 1;
        }
        if (i == 2) {
            return round - 1;
        }
        if (i != 3) {
            return round;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: c */
    public static PerspectiveTransform m30769c(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float x;
        float y;
        float f;
        float f2 = i - 3.5f;
        if (resultPoint4 != null) {
            x = resultPoint4.getX();
            y = resultPoint4.getY();
            f = f2 - 3.0f;
        } else {
            x = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f = f2;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f2, 3.5f, f, f, 3.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x, y, resultPoint3.getX(), resultPoint3.getY());
    }

    /* renamed from: d */
    public static BitMatrix m30770d(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i, perspectiveTransform);
    }

    /* renamed from: a */
    public final float m30771a(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float m30773f = m30773f((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float m30773f2 = m30773f((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(m30773f) ? m30773f2 / 7.0f : Float.isNaN(m30773f2) ? m30773f / 7.0f : (m30773f + m30773f2) / 14.0f;
    }

    public final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (m30771a(resultPoint, resultPoint2) + m30771a(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    /* renamed from: e */
    public final float m30772e(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Detector detector;
        boolean z;
        int i11;
        int i12 = 1;
        boolean z2 = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z2) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int abs = Math.abs(i7 - i5);
        int abs2 = Math.abs(i8 - i6);
        int i13 = 2;
        int i14 = (-abs) / 2;
        int i15 = i5 < i7 ? 1 : -1;
        int i16 = i6 < i8 ? 1 : -1;
        int i17 = i7 + i15;
        int i18 = i5;
        int i19 = i6;
        int i20 = 0;
        while (true) {
            if (i18 == i17) {
                i9 = i17;
                i10 = i13;
                break;
            }
            int i21 = z2 ? i19 : i18;
            int i22 = z2 ? i18 : i19;
            if (i20 == i12) {
                z = z2;
                i11 = i12;
                i9 = i17;
                detector = this;
            } else {
                detector = this;
                z = z2;
                i9 = i17;
                i11 = 0;
            }
            if (i11 == detector.f38765a.get(i21, i22)) {
                if (i20 == 2) {
                    return MathUtils.distance(i18, i19, i5, i6);
                }
                i20++;
            }
            i14 += abs2;
            if (i14 > 0) {
                if (i19 == i8) {
                    i10 = 2;
                    break;
                }
                i19 += i16;
                i14 -= abs;
            }
            i18 += i15;
            i17 = i9;
            z2 = z;
            i12 = 1;
            i13 = 2;
        }
        if (i20 == i10) {
            return MathUtils.distance(i9, i8, i5, i6);
        }
        return Float.NaN;
    }

    /* renamed from: f */
    public final float m30773f(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float m30772e = m30772e(i, i2, i3, i4);
        int i5 = i - (i3 - i);
        int i6 = 0;
        if (i5 < 0) {
            f = i / (i - i5);
            i5 = 0;
        } else if (i5 >= this.f38765a.getWidth()) {
            f = ((this.f38765a.getWidth() - 1) - i) / (i5 - i);
            i5 = this.f38765a.getWidth() - 1;
        } else {
            f = 1.0f;
        }
        float f3 = i2;
        int i7 = (int) (f3 - ((i4 - i2) * f));
        if (i7 < 0) {
            f2 = f3 / (i2 - i7);
        } else if (i7 >= this.f38765a.getHeight()) {
            f2 = ((this.f38765a.getHeight() - 1) - i2) / (i7 - i2);
            i6 = this.f38765a.getHeight() - 1;
        } else {
            i6 = i7;
            f2 = 1.0f;
        }
        return (m30772e + m30772e(i, i2, (int) (i + ((i5 - i) * f2)), i6)) - 1.0f;
    }

    public final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) throws NotFoundException {
        int i3 = (int) (f2 * f);
        int max = Math.max(0, i - i3);
        int min = Math.min(this.f38765a.getWidth() - 1, i + i3) - max;
        float f3 = 3.0f * f;
        if (min < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int max2 = Math.max(0, i2 - i3);
        int min2 = Math.min(this.f38765a.getHeight() - 1, i2 + i3) - max2;
        if (min2 >= f3) {
            return new C14494u9(this.f38765a, max, max2, min, min2, f, this.f38766b).m57560c();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final BitMatrix getImage() {
        return this.f38765a;
    }

    public final ResultPointCallback getResultPointCallback() {
        return this.f38766b;
    }

    public final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        AlignmentPattern alignmentPattern;
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float calculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (calculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int m30768b = m30768b(topLeft, topRight, bottomLeft, calculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(m30768b);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
            float y = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
            float f = 1.0f - (3.0f / dimensionForVersion);
            int x2 = (int) (topLeft.getX() + ((x - topLeft.getX()) * f));
            int y2 = (int) (topLeft.getY() + (f * (y - topLeft.getY())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    alignmentPattern = findAlignmentInRegion(calculateModuleSize, x2, y2, i);
                    break;
                } catch (NotFoundException unused) {
                }
            }
        }
        alignmentPattern = null;
        return new DetectorResult(m30770d(this.f38765a, m30769c(topLeft, topRight, bottomLeft, alignmentPattern, m30768b), m30768b), alignmentPattern == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPattern});
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.f38766b = resultPointCallback;
        return processFinderPatternInfo(new FinderPatternFinder(this.f38765a, resultPointCallback).m30781e(map));
    }
}
