package org.apache.commons.text.diff;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes12.dex */
public class EditScript<T> {

    /* renamed from: a */
    public final List<EditCommand<T>> f110023a = new ArrayList();

    /* renamed from: b */
    public int f110024b = 0;

    /* renamed from: c */
    public int f110025c = 0;

    public void append(KeepCommand<T> keepCommand) {
        this.f110023a.add(keepCommand);
        this.f110024b++;
    }

    public int getLCSLength() {
        return this.f110024b;
    }

    public int getModifications() {
        return this.f110025c;
    }

    public void visit(CommandVisitor<T> commandVisitor) {
        Iterator<EditCommand<T>> it2 = this.f110023a.iterator();
        while (it2.hasNext()) {
            it2.next().accept(commandVisitor);
        }
    }

    public void append(InsertCommand<T> insertCommand) {
        this.f110023a.add(insertCommand);
        this.f110025c++;
    }

    public void append(DeleteCommand<T> deleteCommand) {
        this.f110023a.add(deleteCommand);
        this.f110025c++;
    }
}
