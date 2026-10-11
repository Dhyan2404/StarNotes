package sun.java2d.loops;

import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.util.List;
import java.util.Vector;

/* loaded from: classes16.dex */
public class ProcessPath {
    private static final float CALC_LBND = -1048576.0f;
    private static final float CALC_UBND = 1048576.0f;
    private static final int CRES_INVISIBLE = 4;
    private static final int CRES_MAX_CLIPPED = 1;
    private static final int CRES_MIN_CLIPPED = 0;
    private static final int CRES_NOT_CLIPPED = 3;
    private static final int CUB_A_MDP_MULT = 128;
    private static final int CUB_A_SHIFT = 7;
    private static final int CUB_B_MDP_MULT = 2048;
    private static final int CUB_B_SHIFT = 11;
    private static final int CUB_C_MDP_MULT = 8192;
    private static final int CUB_C_SHIFT = 13;
    private static final int DF_CUB_COUNT = 8;
    private static final int DF_CUB_DEC_BND = 262144;
    private static final int DF_CUB_INC_BND = 32768;
    private static final int DF_CUB_SHIFT = 6;
    private static final int DF_CUB_STEPS = 3;
    private static final int DF_MAX_POINT = 256;
    private static final int DF_QUAD_COUNT = 4;
    private static final int DF_QUAD_DEC_BND = 8192;
    private static final int DF_QUAD_INC_BND = 1024;
    private static final int DF_QUAD_SHIFT = 1;
    private static final int DF_QUAD_STEPS = 2;
    public static final float EPSF = 9.765625E-4f;
    public static final int EPSFX = 1;
    private static final int FWD_PREC = 7;
    private static final float LOWER_BND = -8.5070587E37f;
    private static final int LOWER_OUT_BND = -1048576;
    private static final int MAX_CUB_SIZE = 256;
    private static final int MAX_QUAD_SIZE = 1024;
    private static final int MDP_F_MASK = 1023;
    private static final int MDP_HALF_MULT = 512;
    private static final int MDP_MULT = 1024;
    private static final int MDP_PREC = 10;
    private static final int MDP_W_MASK = -1024;
    public static final int PH_MODE_DRAW_CLIP = 0;
    public static final int PH_MODE_FILL_CLIP = 1;
    private static final int QUAD_A_MDP_MULT = 128;
    private static final int QUAD_A_SHIFT = 7;
    private static final int QUAD_B_MDP_MULT = 512;
    private static final int QUAD_B_SHIFT = 9;
    private static final float UPPER_BND = 8.5070587E37f;
    private static final int UPPER_OUT_BND = 1048576;
    public static EndSubPathHandler noopEndSubPathHandler = new EndSubPathHandler() { // from class: sun.java2d.loops.ProcessPath.1
        @Override // sun.java2d.loops.ProcessPath.EndSubPathHandler
        public void processEndSubPath() {
        }
    };

    /* loaded from: classes16.dex */
    public static class ActiveEdgeList {
        Edge head;

        private ActiveEdgeList() {
        }

        public void delete(Edge edge) {
            Edge edge2 = edge.prev;
            Edge edge3 = edge.next;
            if (edge2 != null) {
                edge2.next = edge3;
            } else {
                this.head = edge3;
            }
            if (edge3 != null) {
                edge3.prev = edge2;
            }
        }

        public void insert(Point point, int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            Point point2 = point.next;
            int i6 = point.f116382x;
            int i7 = point.f116383y;
            int i8 = point2.f116382x;
            int i9 = point2.f116383y;
            if (i7 == i9) {
                return;
            }
            int i10 = i8 - i6;
            int i11 = i9 - i7;
            if (i7 < i9) {
                i2 = i - i7;
                i3 = -1;
            } else {
                i2 = i - i9;
                i3 = 1;
                i6 = i8;
            }
            float f = i10;
            if (f > ProcessPath.CALC_UBND || f < ProcessPath.CALC_LBND) {
                double d = i10;
                double d2 = i11;
                i4 = i6 + ((int) ((d * i2) / d2));
                i5 = (int) ((1024.0d * d) / d2);
            } else {
                i5 = (i10 << 10) / i11;
                i4 = i6 + ((i10 * i2) / i11);
            }
            Edge edge = new Edge(point, i4, i5, i3);
            Edge edge2 = this.head;
            edge.next = edge2;
            edge.prev = null;
            if (edge2 != null) {
                edge2.prev = edge;
            }
            point.edge = edge;
            this.head = edge;
        }

        public boolean isEmpty() {
            return this.head == null;
        }

        public void sort() {
            Edge edge;
            Edge edge2 = null;
            boolean z = true;
            while (true) {
                edge = this.head;
                Edge edge3 = edge.next;
                if (edge2 == edge3 || !z) {
                    break;
                }
                z = false;
                Edge edge4 = edge3;
                Edge edge5 = edge;
                while (edge != edge2) {
                    if (edge.f116380x >= edge4.f116380x) {
                        if (edge == this.head) {
                            Edge edge6 = edge4.next;
                            edge4.next = edge;
                            edge.next = edge6;
                            this.head = edge4;
                        } else {
                            Edge edge7 = edge4.next;
                            edge4.next = edge;
                            edge.next = edge7;
                            edge5.next = edge4;
                        }
                        z = true;
                        edge5 = edge4;
                    } else {
                        edge5 = edge;
                        edge = edge.next;
                    }
                    edge4 = edge.next;
                    if (edge4 == edge2) {
                        edge2 = edge;
                    }
                }
            }
            Edge edge8 = null;
            Edge edge9 = edge;
            while (edge9 != null) {
                edge9.prev = edge8;
                Edge edge10 = edge9;
                edge9 = edge9.next;
                edge8 = edge10;
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class DrawProcessHandler extends ProcessHandler {
        EndSubPathHandler processESP;

        public DrawProcessHandler(DrawHandler drawHandler, EndSubPathHandler endSubPathHandler) {
            super(drawHandler, 0);
            this.dhnd = drawHandler;
            this.processESP = endSubPathHandler;
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0069, code lost:
        
            if (r0.xMax > r8) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00a9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void PROCESS_LINE(int r8, int r9, int r10, int r11, boolean r12, int[] r13) {
            /*
                Method dump skipped, instructions count: 198
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.ProcessPath.DrawProcessHandler.PROCESS_LINE(int, int, int, int, boolean, int[]):void");
        }

        public void PROCESS_POINT(int i, int i2, boolean z, int[] iArr) {
            int i3 = i >> 10;
            int i4 = i2 >> 10;
            if (z) {
                DrawHandler drawHandler = this.dhnd;
                if (drawHandler.yMin > i4 || drawHandler.yMax <= i4 || drawHandler.xMin > i3 || drawHandler.xMax <= i3) {
                    return;
                }
            }
            if (iArr[0] == 0) {
                iArr[0] = 1;
                iArr[1] = i3;
                iArr[2] = i4;
                iArr[3] = i3;
                iArr[4] = i4;
                this.dhnd.drawPixel(i3, i4);
                return;
            }
            if (i3 == iArr[3] && i4 == iArr[4]) {
                return;
            }
            if (i3 == iArr[1] && i4 == iArr[2]) {
                return;
            }
            this.dhnd.drawPixel(i3, i4);
            iArr[3] = i3;
            iArr[4] = i4;
        }

        @Override // sun.java2d.loops.ProcessPath.EndSubPathHandler
        public void processEndSubPath() {
            this.processESP.processEndSubPath();
        }

        @Override // sun.java2d.loops.ProcessPath.ProcessHandler
        public void processFixedLine(int i, int i2, int i3, int i4, int[] iArr, boolean z, boolean z2) {
            int i5;
            int i6;
            int i7;
            int i8;
            int i9 = (i ^ i3) | (i2 ^ i4);
            if ((i9 & ProcessPath.MDP_W_MASK) == 0) {
                if (i9 == 0) {
                    PROCESS_POINT(i + 512, i2 + 512, z, iArr);
                    return;
                }
                return;
            }
            if (i == i3 || i2 == i4) {
                i5 = i2 + 512;
                i6 = i3 + 512;
                i7 = i4 + 512;
                i8 = i + 512;
            } else {
                int i10 = i3 - i;
                int i11 = i4 - i2;
                int i12 = i & ProcessPath.MDP_W_MASK;
                int i13 = i2 & ProcessPath.MDP_W_MASK;
                int i14 = i3 & ProcessPath.MDP_W_MASK;
                int i15 = i4 & ProcessPath.MDP_W_MASK;
                if (i12 == i || i13 == i2) {
                    i12 = i + 512;
                    i5 = i2 + 512;
                } else {
                    if (i < i3) {
                        i12 += 1024;
                    }
                    i5 = i2 < i4 ? i13 + 1024 : i13;
                    int i16 = (((i12 - i) * i11) / i10) + i2;
                    if (i16 < i13 || i16 > i13 + 1024) {
                        i12 = (((i5 - i2) * i10) / i11) + i + 512;
                    } else {
                        i5 = i16 + 512;
                    }
                }
                if (i14 == i3 || i15 == i4) {
                    i6 = i3 + 512;
                    i7 = i4 + 512;
                } else {
                    if (i > i3) {
                        i14 += 1024;
                    }
                    int i17 = i2 > i4 ? i15 + 1024 : i15;
                    int i18 = (((i14 - i3) * i11) / i10) + i4;
                    if (i18 < i15 || i18 > i15 + 1024) {
                        int i19 = (((i17 - i4) * i10) / i11) + i3 + 512;
                        i7 = i17;
                        i6 = i19;
                    } else {
                        i7 = i18 + 512;
                        i8 = i12;
                        i6 = i14;
                    }
                }
                i8 = i12;
            }
            PROCESS_LINE(i8, i5, i6, i7, z, iArr);
        }
    }

    /* loaded from: classes16.dex */
    public static class Edge {
        int dir;

        /* renamed from: dx */
        int f116378dx;
        Edge next;

        /* renamed from: p */
        Point f116379p;
        Edge prev;

        /* renamed from: x */
        int f116380x;

        public Edge(Point point, int i, int i2, int i3) {
            this.f116379p = point;
            this.f116380x = i;
            this.f116378dx = i2;
            this.dir = i3;
        }
    }

    /* loaded from: classes16.dex */
    public interface EndSubPathHandler {
        void processEndSubPath();
    }

    /* loaded from: classes16.dex */
    public static class FillData {
        List<Point> plgPnts = new Vector(256);
        public int plgYMax;
        public int plgYMin;

        public void addPoint(int i, int i2, boolean z) {
            if (this.plgPnts.size() == 0) {
                this.plgYMax = i2;
                this.plgYMin = i2;
            } else {
                int i3 = this.plgYMin;
                if (i3 > i2) {
                    i3 = i2;
                }
                this.plgYMin = i3;
                int i4 = this.plgYMax;
                if (i4 < i2) {
                    i4 = i2;
                }
                this.plgYMax = i4;
            }
            this.plgPnts.add(new Point(i, i2, z));
        }

        public boolean isEmpty() {
            return this.plgPnts.size() == 0;
        }

        public boolean isEnded() {
            return this.plgPnts.get(r1.size() - 1).lastPoint;
        }

        public boolean setEnded() {
            List<Point> list = this.plgPnts;
            list.get(list.size() - 1).lastPoint = true;
            return true;
        }
    }

    /* loaded from: classes16.dex */
    public static class FillProcessHandler extends ProcessHandler {

        /* renamed from: fd */
        FillData f116381fd;

        public FillProcessHandler(DrawHandler drawHandler) {
            super(drawHandler, 1);
            this.f116381fd = new FillData();
        }

        @Override // sun.java2d.loops.ProcessPath.EndSubPathHandler
        public void processEndSubPath() {
            if (this.f116381fd.isEmpty()) {
                return;
            }
            this.f116381fd.setEnded();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // sun.java2d.loops.ProcessPath.ProcessHandler
        public void processFixedLine(int i, int i2, int i3, int i4, int[] iArr, boolean z, boolean z2) {
            int TESTANDCLIP;
            int i5;
            int i6;
            Object[] objArr;
            char c;
            int[] iArr2;
            if (!z) {
                if (this.f116381fd.isEmpty() || this.f116381fd.isEnded()) {
                    this.f116381fd.addPoint(i, i2, false);
                }
                this.f116381fd.addPoint(i3, i4, false);
                if (z2) {
                    this.f116381fd.setEnded();
                    return;
                }
                return;
            }
            int[] iArr3 = {i, i2, i3, i4, 0, 0};
            DrawHandler drawHandler = this.dhnd;
            int i7 = (int) (drawHandler.xMinf * 1024.0f);
            int i8 = (int) (drawHandler.xMaxf * 1024.0f);
            int i9 = (int) (drawHandler.yMinf * 1024.0f);
            int i10 = (int) (drawHandler.yMaxf * 1024.0f);
            if (ProcessPath.TESTANDCLIP(i9, i10, iArr3, 1, 0, 3, 2) == 4 || (TESTANDCLIP = ProcessPath.TESTANDCLIP(i9, i10, iArr3, 3, 2, 1, 0)) == 4) {
                return;
            }
            boolean IS_CLIPPED = ProcessPath.IS_CLIPPED(TESTANDCLIP);
            int CLIPCLAMP = ProcessPath.CLIPCLAMP(i7, i8, iArr3, 0, 1, 2, 3, 4, 5);
            if (CLIPCLAMP == 0) {
                i5 = i8;
                i6 = i7;
                objArr = 4;
                c = true;
                iArr2 = iArr3;
                processFixedLine(iArr3[4], iArr3[5], iArr3[0], iArr3[1], iArr, false, IS_CLIPPED);
            } else {
                i5 = i8;
                i6 = i7;
                objArr = 4;
                c = true;
                iArr2 = iArr3;
                if (CLIPCLAMP == 4) {
                    return;
                }
            }
            int i11 = c;
            Object[] objArr2 = objArr;
            int CLIPCLAMP2 = ProcessPath.CLIPCLAMP(i6, i5, iArr2, 2, 3, 0, 1, 4, 5);
            boolean z3 = (IS_CLIPPED || CLIPCLAMP2 == i11) ? i11 == true ? 1 : 0 : false;
            processFixedLine(iArr2[0], iArr2[i11 == true ? 1 : 0], iArr2[2], iArr2[3], iArr, false, z3);
            if (CLIPCLAMP2 == 0) {
                processFixedLine(iArr2[2], iArr2[3], iArr2[objArr2 == true ? 1 : 0], iArr2[5], iArr, false, z3);
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class Point {
        public Edge edge;
        public boolean lastPoint;
        public Point next;
        public Point nextByY;
        public Point prev;

        /* renamed from: x */
        public int f116382x;

        /* renamed from: y */
        public int f116383y;

        public Point(int i, int i2, boolean z) {
            this.f116382x = i;
            this.f116383y = i2;
            this.lastPoint = z;
        }
    }

    /* loaded from: classes16.dex */
    public static abstract class ProcessHandler implements EndSubPathHandler {
        int clipMode;
        DrawHandler dhnd;

        public ProcessHandler(DrawHandler drawHandler, int i) {
            this.dhnd = drawHandler;
            this.clipMode = i;
        }

        public abstract void processFixedLine(int i, int i2, int i3, int i4, int[] iArr, boolean z, boolean z2);
    }

    private static float CLIP(float f, float f2, float f3, float f4, double d) {
        return (float) (f2 + (((d - f) * (f4 - f2)) / (f3 - f)));
    }

    private static int CLIPCLAMP(float f, float f2, float[] fArr, int i, int i2, int i3, int i4, int i5, int i6) {
        fArr[i5] = fArr[i];
        fArr[i6] = fArr[i2];
        int TESTANDCLIP = TESTANDCLIP(f, f2, fArr, i, i2, i3, i4);
        if (TESTANDCLIP == 0) {
            fArr[i5] = fArr[i];
            return TESTANDCLIP;
        }
        int i7 = 1;
        if (TESTANDCLIP == 1) {
            fArr[i5] = fArr[i];
        } else {
            i7 = 4;
            if (TESTANDCLIP != 4) {
                return TESTANDCLIP;
            }
            if (fArr[i] <= f2) {
                fArr[i] = f;
                fArr[i3] = f;
                return 3;
            }
        }
        return i7;
    }

    private static void DrawMonotonicCubic(ProcessHandler processHandler, float[] fArr, boolean z, int[] iArr) {
        float f = fArr[0];
        int i = (int) (f * 1024.0f);
        float f2 = fArr[1];
        int i2 = (int) (f2 * 1024.0f);
        float f3 = fArr[6];
        int i3 = (int) (f3 * 1024.0f);
        float f4 = fArr[7];
        int i4 = (int) (1024.0f * f4);
        int i5 = (i & 1023) << 6;
        int i6 = (i2 & 1023) << 6;
        float f5 = fArr[2];
        float f6 = fArr[4];
        int i7 = (int) (((((-f) + (f5 * 3.0f)) - (f6 * 3.0f)) + f3) * 128.0f);
        float f7 = fArr[3];
        float f8 = fArr[5];
        int i8 = (int) (((((-f2) + (f7 * 3.0f)) - (f8 * 3.0f)) + f4) * 128.0f);
        int i9 = (int) ((((f * 3.0f) - (f5 * 6.0f)) + (f6 * 3.0f)) * 2048.0f);
        int i10 = (int) ((((f2 * 3.0f) - (6.0f * f7)) + (f8 * 3.0f)) * 2048.0f);
        int i11 = (int) (((f * (-3.0f)) + (f5 * 3.0f)) * 8192.0f);
        int i12 = i7 * 6;
        int i13 = i8 * 6;
        int i14 = i12 + i9;
        int i15 = i13 + i10;
        int i16 = i7 + (i9 >> 1) + i11;
        int i17 = i8 + (i10 >> 1) + ((int) (((f2 * (-3.0f)) + (f7 * 3.0f)) * 8192.0f));
        int i18 = i & MDP_W_MASK;
        int i19 = i2 & MDP_W_MASK;
        int i20 = i3 - i;
        int i21 = i4 - i2;
        int i22 = 32768;
        int i23 = 262144;
        int i24 = 8;
        int i25 = i;
        int i26 = i2;
        int i27 = 6;
        while (i24 > 0) {
            while (true) {
                if (Math.abs(i14) <= i23 && Math.abs(i15) <= i23) {
                    break;
                }
                i14 = (i14 << 1) - i12;
                i15 = (i15 << 1) - i13;
                i16 = (i16 << 2) - (i14 >> 1);
                i17 = (i17 << 2) - (i15 >> 1);
                i24 <<= 1;
                i23 <<= 3;
                i22 <<= 3;
                i5 <<= 3;
                i6 <<= 3;
                i27 += 3;
            }
            int i28 = i22;
            int i29 = i5;
            int i30 = i6;
            int i31 = i16;
            int i32 = i14;
            int i33 = i15;
            int i34 = i23;
            while ((i24 & 1) == 0 && i27 > 6 && Math.abs(i31) <= i28 && Math.abs(i17) <= i28) {
                i31 = (i31 >> 2) + (i32 >> 3);
                i17 = (i17 >> 2) + (i33 >> 3);
                i32 = (i32 + i12) >> 1;
                i33 = (i33 + i13) >> 1;
                i24 >>= 1;
                i34 >>= 3;
                i28 >>= 3;
                i29 >>= 3;
                i30 >>= 3;
                i27 -= 3;
            }
            int i35 = i24 - 1;
            if (i35 > 0) {
                i5 = i29 + i31;
                i6 = i30 + i17;
                i16 = i31 + i32;
                i17 += i33;
                i14 = i32 + i12;
                i15 = i33 + i13;
                int i36 = (i5 >> i27) + i18;
                int i37 = i19 + (i6 >> i27);
                if (((i3 - i36) ^ i20) < 0) {
                    i36 = i3;
                }
                if (((i4 - i37) ^ i21) < 0) {
                    i37 = i4;
                }
                processHandler.processFixedLine(i25, i26, i36, i37, iArr, z, false);
                i25 = i36;
                i26 = i37;
                i24 = i35;
                i23 = i34;
                i22 = i28;
            } else {
                processHandler.processFixedLine(i25, i26, i3, i4, iArr, z, false);
                i22 = i28;
                i24 = i35;
                i5 = i29;
                i6 = i30;
                i16 = i31;
                i14 = i32;
                i15 = i33;
                i23 = i34;
            }
        }
    }

    private static void DrawMonotonicQuad(ProcessHandler processHandler, float[] fArr, boolean z, int[] iArr) {
        float f = fArr[0];
        int i = (int) (f * 1024.0f);
        float f2 = fArr[1];
        int i2 = (int) (f2 * 1024.0f);
        float f3 = fArr[4];
        int i3 = (int) (f3 * 1024.0f);
        float f4 = fArr[5];
        int i4 = (int) (1024.0f * f4);
        int i5 = (i & 1023) << 1;
        int i6 = (i2 & 1023) << 1;
        float f5 = fArr[2];
        int i7 = (int) (((f - (f5 * 2.0f)) + f3) * 128.0f);
        float f6 = fArr[3];
        int i8 = (int) (128.0f * ((f2 - (f6 * 2.0f)) + f4));
        int i9 = (int) (((f * (-2.0f)) + (f5 * 2.0f)) * 512.0f);
        int i10 = i7 * 2;
        int i11 = i8 * 2;
        int i12 = i9 + i7;
        int i13 = ((int) (((f2 * (-2.0f)) + (f6 * 2.0f)) * 512.0f)) + i8;
        int max = Math.max(Math.abs(i10), Math.abs(i11));
        int i14 = i3 - i;
        int i15 = i4 - i2;
        int i16 = i & MDP_W_MASK;
        int i17 = i2 & MDP_W_MASK;
        int i18 = 4;
        int i19 = 1;
        while (max > 8192) {
            i12 = (i12 << 1) - i7;
            i13 = (i13 << 1) - i8;
            i18 <<= 1;
            max >>= 2;
            i5 <<= 2;
            i6 <<= 2;
            i19 += 2;
        }
        int i20 = i2;
        int i21 = i18;
        int i22 = i;
        while (true) {
            int i23 = i21 - 1;
            if (i21 <= 1) {
                processHandler.processFixedLine(i22, i20, i3, i4, iArr, z, false);
                return;
            }
            i5 += i12;
            i6 += i13;
            i12 += i10;
            i13 += i11;
            int i24 = (i5 >> i19) + i16;
            int i25 = (i6 >> i19) + i17;
            if (((i3 - i24) ^ i14) < 0) {
                i24 = i3;
            }
            if (((i4 - i25) ^ i15) < 0) {
                i25 = i4;
            }
            processHandler.processFixedLine(i22, i20, i24, i25, iArr, z, false);
            i22 = i24;
            i20 = i25;
            i21 = i23;
        }
    }

    private static void FillPolygon(FillProcessHandler fillProcessHandler, int i) {
        int i2;
        Point point;
        int i3 = 1;
        int i4 = fillProcessHandler.dhnd.xMax - 1;
        FillData fillData = fillProcessHandler.f116381fd;
        int i5 = fillData.plgYMin;
        int i6 = fillData.plgYMax;
        int i7 = ((i6 - i5) >> 10) + 4;
        int i8 = (i5 - 1) & MDP_W_MASK;
        int i9 = i == 1 ? -1 : 1;
        List<Point> list = fillData.plgPnts;
        int size = list.size();
        if (size <= 1) {
            return;
        }
        Point[] pointArr = new Point[i7];
        list.get(0).prev = null;
        int i10 = 0;
        while (true) {
            i2 = size - 1;
            if (i10 >= i2) {
                break;
            }
            Point point2 = list.get(i10);
            i10++;
            Point point3 = list.get(i10);
            int i11 = ((point2.f116383y - i8) - 1) >> 10;
            point2.nextByY = pointArr[i11];
            pointArr[i11] = point2;
            point2.next = point3;
            point3.prev = point2;
        }
        Point point4 = list.get(i2);
        int i12 = ((point4.f116383y - i8) - 1) >> 10;
        point4.nextByY = pointArr[i12];
        pointArr[i12] = point4;
        ActiveEdgeList activeEdgeList = new ActiveEdgeList();
        int i13 = i8 + 1024;
        int i14 = 0;
        while (i13 <= i6 && i14 < i7) {
            for (Point point5 = pointArr[i14]; point5 != null; point5 = point5.nextByY) {
                Point point6 = point5.prev;
                if (point6 != null && !point6.lastPoint) {
                    Edge edge = point6.edge;
                    if (edge != null && point6.f116383y <= i13) {
                        activeEdgeList.delete(edge);
                        point5.prev.edge = null;
                    } else if (point6.f116383y > i13) {
                        activeEdgeList.insert(point6, i13);
                    }
                }
                if (!point5.lastPoint && (point = point5.next) != null) {
                    Edge edge2 = point5.edge;
                    if (edge2 != null && point.f116383y <= i13) {
                        activeEdgeList.delete(edge2);
                        point5.edge = null;
                    } else if (point.f116383y > i13) {
                        activeEdgeList.insert(point5, i13);
                    }
                }
            }
            if (!activeEdgeList.isEmpty()) {
                activeEdgeList.sort();
                int i15 = fillProcessHandler.dhnd.xMin;
                Edge edge3 = activeEdgeList.head;
                int i16 = 0;
                int i17 = 0;
                while (edge3 != null) {
                    i17 += edge3.dir;
                    int i18 = i17 & i9;
                    if (i18 != 0 && i16 == 0) {
                        i15 = ((edge3.f116380x + 1024) - i3) >> 10;
                        i16 = i3;
                    }
                    if (i18 == 0 && i16 != 0) {
                        int i19 = (edge3.f116380x - i3) >> 10;
                        if (i15 <= i19) {
                            fillProcessHandler.dhnd.drawScanline(i15, i19, i13 >> 10);
                        }
                        i16 = 0;
                    }
                    edge3.f116380x += edge3.f116378dx;
                    edge3 = edge3.next;
                    i3 = 1;
                }
                if (i16 != 0 && i15 <= i4) {
                    fillProcessHandler.dhnd.drawScanline(i15, i4, i13 >> 10);
                }
            }
            i13 += 1024;
            i14++;
            i3 = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean IS_CLIPPED(int i) {
        return i == 0 || i == 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0092, code lost:
    
        if (r10 <= r24[7]) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a2, code lost:
    
        if (r10 >= r24[7]) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x003c, code lost:
    
        if (r12 >= r24[6]) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002c, code lost:
    
        if (r12 <= r24[6]) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
    
        r11 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void ProcessCubic(sun.java2d.loops.ProcessPath.ProcessHandler r23, float[] r24, int[] r25) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.ProcessPath.ProcessCubic(sun.java2d.loops.ProcessPath$ProcessHandler, float[], int[]):void");
    }

    private static void ProcessFirstMonotonicPartOfCubic(ProcessHandler processHandler, float[] fArr, int[] iArr, float f) {
        float f2 = fArr[2];
        float f3 = ((fArr[4] - f2) * f) + f2;
        float f4 = fArr[3];
        float f5 = ((fArr[5] - f4) * f) + f4;
        float f6 = fArr[0];
        float f7 = f6 + ((f2 - f6) * f);
        float f8 = fArr[1];
        float f9 = f8 + ((f4 - f8) * f);
        float f10 = fArr[4];
        float f11 = f10 + ((fArr[6] - f10) * f);
        fArr[4] = f11;
        float f12 = fArr[5];
        float f13 = f12 + ((fArr[7] - f12) * f);
        fArr[5] = f13;
        float f14 = f3 + ((f11 - f3) * f);
        fArr[2] = f14;
        float f15 = f5 + (f * (f13 - f5));
        fArr[3] = f15;
        float f16 = r0[4];
        float f17 = f16 + (f * (f14 - f16));
        fArr[0] = f17;
        float f18 = r0[5];
        float f19 = f18 + (f * (f15 - f18));
        float[] fArr2 = {fArr[0], fArr[1], f7, f9, f7 + ((f3 - f7) * f), f9 + ((f5 - f9) * f), f17, f19};
        fArr[1] = f19;
        ProcessMonotonicCubic(processHandler, fArr2, iArr);
    }

    private static void ProcessFirstMonotonicPartOfQuad(ProcessHandler processHandler, float[] fArr, int[] iArr, float f) {
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float f5 = f4 + ((fArr[4] - f4) * f);
        fArr[2] = f5;
        float f6 = fArr[3];
        float f7 = f6 + ((fArr[5] - f6) * f);
        fArr[3] = f7;
        float f8 = r0[2];
        float f9 = f8 + ((f5 - f8) * f);
        fArr[0] = f9;
        float f10 = r0[3];
        float f11 = f10 + (f * (f7 - f10));
        float[] fArr2 = {fArr[0], fArr[1], f2 + ((fArr[2] - f2) * f), f3 + ((fArr[3] - f3) * f), f9, f11};
        fArr[1] = f11;
        ProcessMonotonicQuad(processHandler, fArr2, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    private static void ProcessLine(ProcessHandler processHandler, float f, float f2, float f3, float f4, int[] iArr) {
        float[] fArr;
        boolean z;
        ?? r12;
        float[] fArr2 = {f, f2, f3, f4, 0.0f, 0.0f};
        DrawHandler drawHandler = processHandler.dhnd;
        float f5 = drawHandler.xMinf;
        float f6 = drawHandler.yMinf;
        float f7 = drawHandler.xMaxf;
        float f8 = drawHandler.yMaxf;
        int TESTANDCLIP = TESTANDCLIP(f6, f8, fArr2, 1, 0, 3, 2);
        if (TESTANDCLIP == 4) {
            return;
        }
        boolean IS_CLIPPED = IS_CLIPPED(TESTANDCLIP);
        int TESTANDCLIP2 = TESTANDCLIP(f6, f8, fArr2, 3, 2, 1, 0);
        if (TESTANDCLIP2 == 4) {
            return;
        }
        boolean IS_CLIPPED2 = IS_CLIPPED(TESTANDCLIP2);
        ?? r9 = IS_CLIPPED || IS_CLIPPED2;
        if (processHandler.clipMode == 0) {
            int TESTANDCLIP3 = TESTANDCLIP(f5, f7, fArr2, 0, 1, 2, 3);
            if (TESTANDCLIP3 == 4) {
                return;
            }
            ?? r92 = r9 == true || IS_CLIPPED(TESTANDCLIP3);
            int TESTANDCLIP4 = TESTANDCLIP(f5, f7, fArr2, 2, 3, 0, 1);
            if (TESTANDCLIP4 == 4) {
                return;
            }
            boolean z2 = IS_CLIPPED2 || IS_CLIPPED(TESTANDCLIP4);
            processHandler.processFixedLine((int) (fArr2[0] * 1024.0f), (int) (fArr2[1] * 1024.0f), (int) (fArr2[2] * 1024.0f), (int) (fArr2[3] * 1024.0f), iArr, r92 == true || z2, z2);
            return;
        }
        int CLIPCLAMP = CLIPCLAMP(f5, f7, fArr2, 0, 1, 2, 3, 4, 5);
        int i = (int) (fArr2[0] * 1024.0f);
        int i2 = (int) (fArr2[1] * 1024.0f);
        if (CLIPCLAMP == 0) {
            fArr = fArr2;
            z = true;
            r12 = 4;
            processHandler.processFixedLine((int) (fArr2[4] * 1024.0f), (int) (fArr2[5] * 1024.0f), i, i2, iArr, false, IS_CLIPPED2);
        } else {
            fArr = fArr2;
            z = true;
            r12 = 4;
            if (CLIPCLAMP == 4) {
                return;
            }
        }
        ?? r24 = r12;
        boolean z3 = z;
        int CLIPCLAMP2 = CLIPCLAMP(f5, f7, fArr, 2, 3, 0, 1, 4, 5);
        boolean z4 = (IS_CLIPPED2 || CLIPCLAMP2 == z3) ? z3 : false;
        int i3 = (int) (fArr[2] * 1024.0f);
        int i4 = (int) (fArr[3] * 1024.0f);
        processHandler.processFixedLine(i, i2, i3, i4, iArr, false, z4);
        if (CLIPCLAMP2 == 0) {
            processHandler.processFixedLine(i3, i4, (int) (fArr[r24 == true ? 1 : 0] * 1024.0f), (int) (fArr[5] * 1024.0f), iArr, false, z4);
        }
    }

    private static void ProcessMonotonicCubic(ProcessHandler processHandler, float[] fArr, int[] iArr) {
        float[] fArr2 = new float[8];
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = f2;
        float f4 = f;
        for (int i = 2; i < 8; i += 2) {
            float f5 = fArr[i];
            if (f > f5) {
                f = f5;
            }
            if (f4 < f5) {
                f4 = f5;
            }
            float f6 = fArr[i + 1];
            if (f2 > f6) {
                f2 = f6;
            }
            if (f3 < f6) {
                f3 = f6;
            }
        }
        if (processHandler.clipMode == 0) {
            DrawHandler drawHandler = processHandler.dhnd;
            if (drawHandler.xMaxf < f || drawHandler.xMinf > f4 || drawHandler.yMaxf < f2 || drawHandler.yMinf > f3) {
                return;
            }
        } else {
            DrawHandler drawHandler2 = processHandler.dhnd;
            if (drawHandler2.yMaxf < f2 || drawHandler2.yMinf > f3 || drawHandler2.xMaxf < f) {
                return;
            }
            float f7 = drawHandler2.xMinf;
            if (f7 > f4) {
                fArr[6] = f7;
                fArr[4] = f7;
                fArr[2] = f7;
                fArr[0] = f7;
            }
        }
        if (f4 - f <= 256.0f && f3 - f2 <= 256.0f) {
            DrawHandler drawHandler3 = processHandler.dhnd;
            DrawMonotonicCubic(processHandler, fArr, drawHandler3.xMinf > f || drawHandler3.xMaxf < f4 || drawHandler3.yMinf > f2 || drawHandler3.yMaxf < f3, iArr);
            return;
        }
        fArr2[6] = fArr[6];
        fArr2[7] = fArr[7];
        float f8 = (fArr[4] + fArr[6]) / 2.0f;
        fArr2[4] = f8;
        float f9 = (fArr[5] + fArr[7]) / 2.0f;
        fArr2[5] = f9;
        float f10 = (fArr[2] + fArr[4]) / 2.0f;
        float f11 = (fArr[3] + fArr[5]) / 2.0f;
        fArr2[2] = (f8 + f10) / 2.0f;
        fArr2[3] = (f11 + f9) / 2.0f;
        float f12 = (fArr[0] + fArr[2]) / 2.0f;
        fArr[2] = f12;
        float f13 = (fArr[1] + fArr[3]) / 2.0f;
        fArr[3] = f13;
        float f14 = (f12 + f10) / 2.0f;
        fArr[4] = f14;
        float f15 = (f13 + f11) / 2.0f;
        fArr[5] = f15;
        float f16 = (f14 + fArr2[2]) / 2.0f;
        fArr2[0] = f16;
        fArr[6] = f16;
        float f17 = (f15 + fArr2[3]) / 2.0f;
        fArr2[1] = f17;
        fArr[7] = f17;
        ProcessMonotonicCubic(processHandler, fArr, iArr);
        ProcessMonotonicCubic(processHandler, fArr2, iArr);
    }

    private static void ProcessMonotonicQuad(ProcessHandler processHandler, float[] fArr, int[] iArr) {
        float[] fArr2 = new float[6];
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = f2;
        float f4 = f;
        for (int i = 2; i < 6; i += 2) {
            float f5 = fArr[i];
            if (f > f5) {
                f = f5;
            }
            if (f4 < f5) {
                f4 = f5;
            }
            float f6 = fArr[i + 1];
            if (f2 > f6) {
                f2 = f6;
            }
            if (f3 < f6) {
                f3 = f6;
            }
        }
        if (processHandler.clipMode == 0) {
            DrawHandler drawHandler = processHandler.dhnd;
            if (drawHandler.xMaxf < f || drawHandler.xMinf > f4 || drawHandler.yMaxf < f2 || drawHandler.yMinf > f3) {
                return;
            }
        } else {
            DrawHandler drawHandler2 = processHandler.dhnd;
            if (drawHandler2.yMaxf < f2 || drawHandler2.yMinf > f3 || drawHandler2.xMaxf < f) {
                return;
            }
            float f7 = drawHandler2.xMinf;
            if (f7 > f4) {
                fArr[4] = f7;
                fArr[2] = f7;
                fArr[0] = f7;
            }
        }
        if (f4 - f <= 1024.0f && f3 - f2 <= 1024.0f) {
            DrawHandler drawHandler3 = processHandler.dhnd;
            DrawMonotonicQuad(processHandler, fArr, drawHandler3.xMinf >= f || drawHandler3.xMaxf <= f4 || drawHandler3.yMinf >= f2 || drawHandler3.yMaxf <= f3, iArr);
            return;
        }
        fArr2[4] = fArr[4];
        fArr2[5] = fArr[5];
        fArr2[2] = (fArr[2] + fArr[4]) / 2.0f;
        fArr2[3] = (fArr[3] + fArr[5]) / 2.0f;
        float f8 = (fArr[0] + fArr[2]) / 2.0f;
        fArr[2] = f8;
        float f9 = (fArr[1] + fArr[3]) / 2.0f;
        fArr[3] = f9;
        float f10 = (f8 + fArr2[2]) / 2.0f;
        fArr2[0] = f10;
        fArr[4] = f10;
        float f11 = (f9 + fArr2[3]) / 2.0f;
        fArr2[1] = f11;
        fArr[5] = f11;
        ProcessMonotonicQuad(processHandler, fArr, iArr);
        ProcessMonotonicQuad(processHandler, fArr2, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void ProcessQuad(sun.java2d.loops.ProcessPath.ProcessHandler r18, float[] r19, int[] r20) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.ProcessPath.ProcessQuad(sun.java2d.loops.ProcessPath$ProcessHandler, float[], int[]):void");
    }

    private static int TESTANDCLIP(float f, float f2, float[] fArr, int i, int i2, int i3, int i4) {
        double d;
        int i5;
        float f3 = fArr[i];
        if (f3 >= f && f3 <= f2) {
            return 3;
        }
        if (f3 < f) {
            if (fArr[i3] < f) {
                return 4;
            }
            d = f;
            i5 = 0;
        } else {
            if (fArr[i3] > f2) {
                return 4;
            }
            d = f2;
            i5 = 1;
        }
        int i6 = i5;
        fArr[i2] = CLIP(f3, fArr[i2], fArr[i3], fArr[i4], d);
        fArr[i] = (float) d;
        return i6;
    }

    private static boolean doProcessPath(ProcessHandler processHandler, Path2D.Float r25, float f, float f2) {
        float f3;
        float f4;
        PathIterator pathIterator;
        float[] fArr = new float[8];
        float[] fArr2 = new float[8];
        float[] fArr3 = {0.0f, 0.0f};
        int[] iArr = new int[5];
        iArr[0] = 0;
        processHandler.dhnd.adjustBounds(LOWER_OUT_BND, LOWER_OUT_BND, 1048576, 1048576);
        if (processHandler.dhnd.strokeControl == 2) {
            fArr3[0] = -0.5f;
            fArr3[1] = -0.5f;
            f3 = (float) (f - 0.5d);
            f4 = (float) (f2 - 0.5d);
        } else {
            f3 = f;
            f4 = f2;
        }
        float f5 = f3;
        float f6 = f4;
        PathIterator pathIterator2 = r25.getPathIterator(null);
        boolean z = false;
        boolean z2 = false;
        while (!pathIterator2.isDone()) {
            int currentSegment = pathIterator2.currentSegment(fArr);
            if (currentSegment == 0) {
                pathIterator = pathIterator2;
                if (z && !z2) {
                    if (processHandler.clipMode == 1) {
                        float f7 = fArr2[0];
                        float f8 = fArr3[0];
                        if (f7 != f8 || fArr2[1] != fArr3[1]) {
                            ProcessLine(processHandler, f7, fArr2[1], f8, fArr3[1], iArr);
                        }
                    }
                    processHandler.processEndSubPath();
                }
                float f9 = fArr[0] + f5;
                fArr2[0] = f9;
                float f10 = fArr[1] + f6;
                fArr2[1] = f10;
                if (f9 >= UPPER_BND || f9 <= LOWER_BND || f10 >= UPPER_BND || f10 <= LOWER_BND) {
                    z2 = true;
                } else {
                    fArr3[0] = f9;
                    fArr3[1] = f10;
                    z2 = false;
                    z = true;
                }
                iArr[0] = 0;
            } else if (currentSegment == 1) {
                pathIterator = pathIterator2;
                float f11 = fArr[0] + f5;
                fArr2[2] = f11;
                float f12 = fArr[1] + f6;
                fArr2[3] = f12;
                if (f11 < UPPER_BND && f11 > LOWER_BND && f12 < UPPER_BND && f12 > LOWER_BND) {
                    if (z2) {
                        fArr3[0] = f11;
                        fArr2[0] = f11;
                        fArr3[1] = f12;
                        fArr2[1] = f12;
                        z2 = false;
                        z = true;
                    } else {
                        ProcessLine(processHandler, fArr2[0], fArr2[1], f11, f12, iArr);
                        fArr2[0] = f11;
                        fArr2[1] = f12;
                    }
                }
            } else if (currentSegment == 2) {
                pathIterator = pathIterator2;
                float f13 = fArr[0] + f5;
                fArr2[2] = f13;
                float f14 = fArr[1] + f6;
                fArr2[3] = f14;
                float f15 = fArr[2] + f5;
                fArr2[4] = f15;
                float f16 = fArr[3] + f6;
                fArr2[5] = f16;
                if (f15 < UPPER_BND && f15 > LOWER_BND && f16 < UPPER_BND && f16 > LOWER_BND) {
                    if (z2) {
                        fArr3[0] = f15;
                        fArr2[0] = f15;
                        fArr3[1] = f16;
                        fArr2[1] = f16;
                        z2 = false;
                        z = true;
                    } else {
                        if (f13 >= UPPER_BND || f13 <= LOWER_BND || f14 >= UPPER_BND || f14 <= LOWER_BND) {
                            ProcessLine(processHandler, fArr2[0], fArr2[1], f15, f16, iArr);
                        } else {
                            ProcessQuad(processHandler, fArr2, iArr);
                        }
                        fArr2[0] = f15;
                        fArr2[1] = f16;
                    }
                }
            } else if (currentSegment == 3) {
                pathIterator = pathIterator2;
                float f17 = fArr[0] + f5;
                fArr2[2] = f17;
                float f18 = fArr[1] + f6;
                fArr2[3] = f18;
                float f19 = fArr[2] + f5;
                fArr2[4] = f19;
                float f20 = fArr[3] + f6;
                fArr2[5] = f20;
                float f21 = fArr[4] + f5;
                fArr2[6] = f21;
                float f22 = fArr[5] + f6;
                fArr2[7] = f22;
                if (f21 < UPPER_BND && f21 > LOWER_BND && f22 < UPPER_BND && f22 > LOWER_BND) {
                    if (z2) {
                        fArr3[0] = f21;
                        fArr2[0] = f21;
                        fArr3[1] = f22;
                        fArr2[1] = f22;
                        z2 = false;
                        z = true;
                    } else {
                        if (f17 >= UPPER_BND || f17 <= LOWER_BND || f18 >= UPPER_BND || f18 <= LOWER_BND || f19 >= UPPER_BND || f19 <= LOWER_BND || f20 >= UPPER_BND || f20 <= LOWER_BND) {
                            ProcessLine(processHandler, fArr2[0], fArr2[1], f21, f22, iArr);
                        } else {
                            ProcessCubic(processHandler, fArr2, iArr);
                        }
                        fArr2[0] = f21;
                        fArr2[1] = f22;
                    }
                }
            } else if (currentSegment == 4 && z && !z2) {
                float f23 = fArr2[0];
                float f24 = fArr3[0];
                if (f23 == f24 && fArr2[1] == fArr3[1]) {
                    pathIterator = pathIterator2;
                } else {
                    pathIterator = pathIterator2;
                    ProcessLine(processHandler, f23, fArr2[1], f24, fArr3[1], iArr);
                    fArr2[0] = fArr3[0];
                    fArr2[1] = fArr3[1];
                }
                processHandler.processEndSubPath();
                z2 = false;
            } else {
                pathIterator = pathIterator2;
            }
            pathIterator.next();
            pathIterator2 = pathIterator;
        }
        if (z & (!z2)) {
            if (processHandler.clipMode == 1) {
                float f25 = fArr2[0];
                float f26 = fArr3[0];
                if (f25 != f26 || fArr2[1] != fArr3[1]) {
                    ProcessLine(processHandler, f25, fArr2[1], f26, fArr3[1], iArr);
                }
            }
            processHandler.processEndSubPath();
        }
        return true;
    }

    public static boolean drawPath(DrawHandler drawHandler, EndSubPathHandler endSubPathHandler, Path2D.Float r3, int i, int i2) {
        return doProcessPath(new DrawProcessHandler(drawHandler, endSubPathHandler), r3, i, i2);
    }

    public static boolean fillPath(DrawHandler drawHandler, Path2D.Float r2, int i, int i2) {
        FillProcessHandler fillProcessHandler = new FillProcessHandler(drawHandler);
        if (!doProcessPath(fillProcessHandler, r2, i, i2)) {
            return false;
        }
        FillPolygon(fillProcessHandler, r2.getWindingRule());
        return true;
    }

    /* loaded from: classes16.dex */
    public static abstract class DrawHandler {
        public int strokeControl;
        public int xMax;
        public float xMaxf;
        public int xMin;
        public float xMinf;
        public int yMax;
        public float yMaxf;
        public int yMin;
        public float yMinf;

        public DrawHandler(int i, int i2, int i3, int i4, int i5) {
            setBounds(i, i2, i3, i4, i5);
        }

        public void adjustBounds(int i, int i2, int i3, int i4) {
            int i5 = this.xMin;
            if (i5 > i) {
                i = i5;
            }
            int i6 = this.xMax;
            if (i6 < i3) {
                i3 = i6;
            }
            int i7 = this.yMin;
            if (i7 > i2) {
                i2 = i7;
            }
            int i8 = this.yMax;
            if (i8 < i4) {
                i4 = i8;
            }
            setBounds(i, i2, i3, i4);
        }

        public abstract void drawLine(int i, int i2, int i3, int i4);

        public abstract void drawPixel(int i, int i2);

        public abstract void drawScanline(int i, int i2, int i3);

        public void setBounds(int i, int i2, int i3, int i4) {
            this.xMin = i;
            this.yMin = i2;
            this.xMax = i3;
            this.yMax = i4;
            this.xMinf = i - 0.5f;
            this.yMinf = i2 - 0.5f;
            this.xMaxf = (i3 - 0.5f) - 9.765625E-4f;
            this.yMaxf = (i4 - 0.5f) - 9.765625E-4f;
        }

        public DrawHandler(int i, int i2, int i3, int i4) {
            this(i, i2, i3, i4, 0);
        }

        public void setBounds(int i, int i2, int i3, int i4, int i5) {
            this.strokeControl = i5;
            setBounds(i, i2, i3, i4);
        }
    }

    private static int CLIP(int i, int i2, int i3, int i4, double d) {
        return (int) (i2 + (((d - i) * (i4 - i2)) / (i3 - i)));
    }

    public static boolean drawPath(DrawHandler drawHandler, Path2D.Float r3, int i, int i2) {
        return doProcessPath(new DrawProcessHandler(drawHandler, noopEndSubPathHandler), r3, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int TESTANDCLIP(int i, int i2, int[] iArr, int i3, int i4, int i5, int i6) {
        double d;
        int i7;
        int i8 = iArr[i3];
        if (i8 >= i && i8 <= i2) {
            return 3;
        }
        if (i8 < i) {
            if (iArr[i5] < i) {
                return 4;
            }
            d = i;
            i7 = 0;
        } else {
            if (iArr[i5] > i2) {
                return 4;
            }
            d = i2;
            i7 = 1;
        }
        int i9 = i7;
        iArr[i4] = CLIP(i8, iArr[i4], iArr[i5], iArr[i6], d);
        iArr[i3] = (int) d;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int CLIPCLAMP(int i, int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7, int i8) {
        iArr[i7] = iArr[i3];
        iArr[i8] = iArr[i4];
        int TESTANDCLIP = TESTANDCLIP(i, i2, iArr, i3, i4, i5, i6);
        if (TESTANDCLIP == 0) {
            iArr[i7] = iArr[i3];
            return TESTANDCLIP;
        }
        int i9 = 1;
        if (TESTANDCLIP == 1) {
            iArr[i7] = iArr[i3];
        } else {
            i9 = 4;
            if (TESTANDCLIP != 4) {
                return TESTANDCLIP;
            }
            if (iArr[i3] <= i2) {
                iArr[i3] = i;
                iArr[i5] = i;
                return 3;
            }
        }
        return i9;
    }
}
