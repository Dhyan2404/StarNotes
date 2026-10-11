package net.p110sf.saxon.lib;

import java.util.ArrayList;
import java.util.List;
import javax.xml.transform.Result;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class RawResult implements Result {

    /* renamed from: e */
    public String f100540e;

    /* renamed from: f */
    public final List<Item> f100541f = new ArrayList();

    public void append(Item item) {
        this.f100541f.add(item);
    }

    public Sequence getResultSequence() {
        return new SequenceExtent.C18571Of(this.f100541f);
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f100540e;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f100540e = str;
    }
}
