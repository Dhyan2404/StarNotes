package io.nano.tex;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes10.dex */
final class ActionRecorder {
    private static final byte ACT_drawChar = 8;
    private static final byte ACT_drawLine = 10;
    private static final byte ACT_drawRect = 11;
    private static final byte ACT_drawRoundRect = 13;
    private static final byte ACT_drawText = 9;
    private static final byte ACT_fillRect = 12;
    private static final byte ACT_fillRoundRect = 14;
    private static final byte ACT_reset = 7;
    private static final byte ACT_rotate = 6;
    private static final byte ACT_scale = 5;
    private static final byte ACT_setColor = 1;
    private static final byte ACT_setFont = 0;
    private static final byte ACT_setStroke = 3;
    private static final byte ACT_setStrokeWidth = 2;
    private static final byte ACT_translate = 4;
    private static final String TAG = "ActionRecorder";
    private List<Action> actions = new LinkedList();
    private Action origin;

    /* loaded from: classes10.dex */
    public static final class Action {
        byte action;
        Object arg;
        float[] args;

        public Action(byte b, Object obj, float[] fArr) {
            this.action = b;
            this.arg = obj;
            this.args = fArr;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{ action: ");
            sb.append((int) this.action);
            sb.append(", arg: ");
            sb.append(this.arg);
            sb.append(", args: [");
            float[] fArr = this.args;
            if (fArr == null) {
                sb.append("null");
            } else {
                for (float f : fArr) {
                    sb.append(f);
                    sb.append(", ");
                }
            }
            sb.append("] }");
            return sb.toString();
        }
    }

    public ActionRecorder() {
        Action action = new Action((byte) 4, null, new float[]{0.0f, 0.0f});
        this.origin = action;
        this.actions.add(action);
    }

    public void play(Graphics2D graphics2D) {
        Iterator<Action> it2 = this.actions.iterator();
        while (it2.hasNext()) {
            play(graphics2D, it2.next());
        }
    }

    public void record(int i, Object obj, float[] fArr) {
        this.actions.add(new Action((byte) i, obj, fArr));
    }

    public void setPosition(float f, float f2) {
        float[] fArr = this.origin.args;
        fArr[0] = f;
        fArr[1] = f2;
    }

    private void play(Graphics2D graphics2D, Action action) {
        if (action == null) {
            return;
        }
        switch (action.action) {
            case 0:
                graphics2D.setFont((Font) action.arg);
                return;
            case 1:
                graphics2D.setColor((int) action.args[0]);
                return;
            case 2:
                graphics2D.setStrokeWidth(action.args[0]);
                return;
            case 3:
                float[] fArr = action.args;
                graphics2D.setStroke(fArr[0], fArr[1], (int) fArr[2], (int) fArr[3]);
                return;
            case 4:
                float[] fArr2 = action.args;
                graphics2D.translate(fArr2[0], fArr2[1]);
                return;
            case 5:
                float[] fArr3 = action.args;
                graphics2D.scale(fArr3[0], fArr3[1]);
                return;
            case 6:
                float[] fArr4 = action.args;
                graphics2D.rotate(fArr4[0], fArr4[1], fArr4[2]);
                return;
            case 7:
                graphics2D.reset();
                return;
            case 8:
                float[] fArr5 = action.args;
                graphics2D.drawChar((char) fArr5[0], fArr5[1], fArr5[2]);
                return;
            case 9:
                String str = (String) action.arg;
                float[] fArr6 = action.args;
                graphics2D.drawText(str, fArr6[0], fArr6[1]);
                return;
            case 10:
                float[] fArr7 = action.args;
                graphics2D.drawLine(fArr7[0], fArr7[1], fArr7[2], fArr7[3]);
                return;
            case 11:
                float[] fArr8 = action.args;
                graphics2D.drawRect(fArr8[0], fArr8[1], fArr8[2], fArr8[3]);
                return;
            case 12:
                float[] fArr9 = action.args;
                graphics2D.fillRect(fArr9[0], fArr9[1], fArr9[2], fArr9[3]);
                return;
            case 13:
                float[] fArr10 = action.args;
                graphics2D.drawRoundRect(fArr10[0], fArr10[1], fArr10[2], fArr10[3], fArr10[4], fArr10[5]);
                return;
            case 14:
                float[] fArr11 = action.args;
                graphics2D.fillRoundRect(fArr11[0], fArr11[1], fArr11[2], fArr11[3], fArr11[4], fArr11[5]);
                return;
            default:
                return;
        }
    }
}
