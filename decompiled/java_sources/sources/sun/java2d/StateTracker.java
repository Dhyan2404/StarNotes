package sun.java2d;

/* loaded from: classes16.dex */
public interface StateTracker {
    public static final StateTracker ALWAYS_CURRENT = new StateTracker() { // from class: sun.java2d.StateTracker.1
        @Override // sun.java2d.StateTracker
        public boolean isCurrent() {
            return true;
        }
    };
    public static final StateTracker NEVER_CURRENT = new StateTracker() { // from class: sun.java2d.StateTracker.2
        @Override // sun.java2d.StateTracker
        public boolean isCurrent() {
            return false;
        }
    };

    boolean isCurrent();
}
