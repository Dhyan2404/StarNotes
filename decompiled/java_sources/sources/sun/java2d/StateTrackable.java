package sun.java2d;

/* loaded from: classes16.dex */
public interface StateTrackable {

    /* loaded from: classes16.dex */
    public enum State {
        IMMUTABLE,
        STABLE,
        DYNAMIC,
        UNTRACKABLE
    }

    State getState();

    StateTracker getStateTracker();
}
