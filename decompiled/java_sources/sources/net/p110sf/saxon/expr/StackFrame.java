package net.p110sf.saxon.expr;

import java.util.Arrays;
import java.util.Stack;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.om.Sequence;

/* loaded from: classes11.dex */
public class StackFrame {
    public static final StackFrame EMPTY = new StackFrame(SlotManager.EMPTY, new Sequence[0]);
    protected Stack<Sequence> dynamicStack;
    protected SlotManager map;
    protected Sequence[] slots;

    public StackFrame(SlotManager slotManager, Sequence[] sequenceArr) {
        this.map = slotManager;
        this.slots = sequenceArr;
    }

    /* renamed from: a */
    public final Stack<Sequence> m62642a() {
        return new Stack<>();
    }

    /* renamed from: b */
    public final Stack<Sequence> m62643b(Stack<Sequence> stack) {
        Stack<Sequence> m62642a = m62642a();
        m62642a.addAll(stack);
        return m62642a;
    }

    public StackFrame copy() {
        Sequence[] sequenceArr = this.slots;
        StackFrame stackFrame = new StackFrame(this.map, (Sequence[]) Arrays.copyOf(sequenceArr, sequenceArr.length));
        Stack<Sequence> stack = this.dynamicStack;
        if (stack != null) {
            stackFrame.dynamicStack = m62643b(stack);
        }
        return stackFrame;
    }

    public SlotManager getStackFrameMap() {
        return this.map;
    }

    public Sequence[] getStackFrameValues() {
        return this.slots;
    }

    public boolean holdsDynamicValue() {
        Stack<Sequence> stack = this.dynamicStack;
        return (stack == null || stack.empty()) ? false : true;
    }

    public Sequence popDynamicValue() {
        return this.dynamicStack.pop();
    }

    public void pushDynamicValue(Sequence sequence) {
        if (this == EMPTY) {
            throw new IllegalStateException("Immutable stack frame");
        }
        if (this.dynamicStack == null) {
            this.dynamicStack = m62642a();
        }
        this.dynamicStack.push(sequence);
    }

    public void setStackFrameValues(Sequence[] sequenceArr) {
        this.slots = sequenceArr;
    }
}
