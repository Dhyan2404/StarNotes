package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.motion.widget.MotionInterpolator;

/* loaded from: classes3.dex */
public class StopLogic extends MotionInterpolator {

    /* renamed from: a */
    public StopLogicEngine f3500a;

    /* renamed from: b */
    public SpringStopEngine f3501b;

    /* renamed from: c */
    public StopEngine f3502c;

    public StopLogic() {
        StopLogicEngine stopLogicEngine = new StopLogicEngine();
        this.f3500a = stopLogicEngine;
        this.f3502c = stopLogicEngine;
    }

    public void config(float currentPos, float destination, float currentVelocity, float maxTime, float maxAcceleration, float maxVelocity) {
        StopLogicEngine stopLogicEngine = this.f3500a;
        this.f3502c = stopLogicEngine;
        stopLogicEngine.config(currentPos, destination, currentVelocity, maxTime, maxAcceleration, maxVelocity);
    }

    public String debug(String desc, float time) {
        return this.f3502c.debug(desc, time);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float v) {
        return this.f3502c.getInterpolation(v);
    }

    public float getVelocity(float x) {
        return this.f3502c.getVelocity(x);
    }

    public boolean isStopped() {
        return this.f3502c.isStopped();
    }

    public void springConfig(float currentPos, float destination, float currentVelocity, float mass, float stiffness, float damping, float stopThreshold, int boundaryMode) {
        if (this.f3501b == null) {
            this.f3501b = new SpringStopEngine();
        }
        SpringStopEngine springStopEngine = this.f3501b;
        this.f3502c = springStopEngine;
        springStopEngine.springConfig(currentPos, destination, currentVelocity, mass, stiffness, damping, stopThreshold, boundaryMode);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public float getVelocity() {
        return this.f3502c.getVelocity();
    }
}
