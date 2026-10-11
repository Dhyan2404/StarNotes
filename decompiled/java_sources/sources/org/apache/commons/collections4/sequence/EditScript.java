package org.apache.commons.collections4.sequence;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes11.dex */
public class EditScript<T> {

    /* renamed from: a */
    public final List<EditCommand<T>> f105285a = new ArrayList();

    /* renamed from: b */
    public int f105286b = 0;

    /* renamed from: c */
    public int f105287c = 0;

    public void append(KeepCommand<T> keepCommand) {
        this.f105285a.add(keepCommand);
        this.f105286b++;
    }

    public int getLCSLength() {
        return this.f105286b;
    }

    public int getModifications() {
        return this.f105287c;
    }

    public void visit(CommandVisitor<T> commandVisitor) {
        Iterator<EditCommand<T>> it2 = this.f105285a.iterator();
        while (it2.hasNext()) {
            it2.next().accept(commandVisitor);
        }
    }

    public void append(InsertCommand<T> insertCommand) {
        this.f105285a.add(insertCommand);
        this.f105287c++;
    }

    public void append(DeleteCommand<T> deleteCommand) {
        this.f105285a.add(deleteCommand);
        this.f105287c++;
    }
}
