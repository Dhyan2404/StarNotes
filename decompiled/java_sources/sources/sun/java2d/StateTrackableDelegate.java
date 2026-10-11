package sun.java2d;

import sun.java2d.StateTrackable;

/* loaded from: classes16.dex */
public final class StateTrackableDelegate implements StateTrackable {
    private int numDynamicAgents;
    private StateTrackable.State theState;
    StateTracker theTracker;
    public static final StateTrackableDelegate UNTRACKABLE_DELEGATE = new StateTrackableDelegate(StateTrackable.State.UNTRACKABLE);
    public static final StateTrackableDelegate IMMUTABLE_DELEGATE = new StateTrackableDelegate(StateTrackable.State.IMMUTABLE);

    /* renamed from: sun.java2d.StateTrackableDelegate$2 */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C205452 {
        static final /* synthetic */ int[] $SwitchMap$sun$java2d$StateTrackable$State;

        static {
            int[] iArr = new int[StateTrackable.State.values().length];
            $SwitchMap$sun$java2d$StateTrackable$State = iArr;
            try {
                iArr[StateTrackable.State.UNTRACKABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$sun$java2d$StateTrackable$State[StateTrackable.State.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$sun$java2d$StateTrackable$State[StateTrackable.State.DYNAMIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$sun$java2d$StateTrackable$State[StateTrackable.State.IMMUTABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private StateTrackableDelegate(StateTrackable.State state) {
        this.theState = state;
    }

    public static StateTrackableDelegate createInstance(StateTrackable.State state) {
        int i = C205452.$SwitchMap$sun$java2d$StateTrackable$State[state.ordinal()];
        if (i == 1) {
            return UNTRACKABLE_DELEGATE;
        }
        if (i == 2) {
            return new StateTrackableDelegate(StateTrackable.State.STABLE);
        }
        if (i == 3) {
            return new StateTrackableDelegate(StateTrackable.State.DYNAMIC);
        }
        if (i == 4) {
            return IMMUTABLE_DELEGATE;
        }
        throw new InternalError("unknown state");
    }

    public synchronized void addDynamicAgent() {
        StateTrackable.State state = this.theState;
        if (state == StateTrackable.State.IMMUTABLE) {
            throw new IllegalStateException("Cannot change state from IMMUTABLE");
        }
        this.numDynamicAgents++;
        if (state == StateTrackable.State.STABLE) {
            this.theState = StateTrackable.State.DYNAMIC;
            this.theTracker = null;
        }
    }

    @Override // sun.java2d.StateTrackable
    public StateTrackable.State getState() {
        return this.theState;
    }

    @Override // sun.java2d.StateTrackable
    public synchronized StateTracker getStateTracker() {
        StateTracker stateTracker;
        stateTracker = this.theTracker;
        if (stateTracker == null) {
            int i = C205452.$SwitchMap$sun$java2d$StateTrackable$State[this.theState.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    stateTracker = new StateTracker() { // from class: sun.java2d.StateTrackableDelegate.1
                        @Override // sun.java2d.StateTracker
                        public boolean isCurrent() {
                            return StateTrackableDelegate.this.theTracker == this;
                        }
                    };
                } else if (i != 3) {
                    if (i == 4) {
                        stateTracker = StateTracker.ALWAYS_CURRENT;
                    }
                }
                this.theTracker = stateTracker;
            }
            stateTracker = StateTracker.NEVER_CURRENT;
            this.theTracker = stateTracker;
        }
        return stateTracker;
    }

    public void markDirty() {
        this.theTracker = null;
    }

    public synchronized void removeDynamicAgent() {
        int i = this.numDynamicAgents - 1;
        this.numDynamicAgents = i;
        if (i == 0 && this.theState == StateTrackable.State.DYNAMIC) {
            this.theState = StateTrackable.State.STABLE;
            this.theTracker = null;
        }
    }

    public synchronized void setImmutable() {
        StateTrackable.State state = this.theState;
        if (state == StateTrackable.State.UNTRACKABLE || state == StateTrackable.State.DYNAMIC) {
            throw new IllegalStateException("UNTRACKABLE or DYNAMIC objects cannot become IMMUTABLE");
        }
        this.theState = StateTrackable.State.IMMUTABLE;
        this.theTracker = null;
    }

    public synchronized void setUntrackable() {
        if (this.theState == StateTrackable.State.IMMUTABLE) {
            throw new IllegalStateException("IMMUTABLE objects cannot become UNTRACKABLE");
        }
        this.theState = StateTrackable.State.UNTRACKABLE;
        this.theTracker = null;
    }
}
