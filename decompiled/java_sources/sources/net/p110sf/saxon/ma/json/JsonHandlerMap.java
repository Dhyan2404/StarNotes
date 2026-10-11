package net.p110sf.saxon.ma.json;

import java.util.ArrayList;
import java.util.Stack;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JsonHandlerMap extends JsonHandler {

    /* renamed from: d */
    public Stack<Sequence> f100620d;
    protected Stack<String> keys;

    public JsonHandlerMap(XPathContext xPathContext, int i) {
        setContext(xPathContext);
        this.f100620d = new Stack<>();
        this.keys = new Stack<>();
        this.escape = (i & 1) != 0;
        this.charChecker = xPathContext.getConfiguration().getValidCharacterChecker();
    }

    /* renamed from: e */
    public final void m63311e(GroundedValue groundedValue) {
        if (this.f100620d.empty()) {
            this.f100620d.push(groundedValue);
        } else if (this.f100620d.peek() instanceof ArrayItem) {
            ((SimpleArrayItem) this.f100620d.peek()).getMembers().add(groundedValue.materialize());
        } else {
            ((DictionaryMap) this.f100620d.peek()).initialPut(this.keys.pop(), groundedValue);
        }
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void endArray() {
        ArrayItem arrayItem = (ArrayItem) this.f100620d.pop();
        if (this.f100620d.empty()) {
            this.f100620d.push(arrayItem);
        } else {
            m63311e(arrayItem);
        }
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void endMap() {
        DictionaryMap dictionaryMap = (DictionaryMap) this.f100620d.pop();
        if (this.f100620d.empty()) {
            this.f100620d.push(dictionaryMap);
        } else {
            m63311e(dictionaryMap);
        }
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public Sequence getResult() {
        return this.f100620d.peek();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public boolean setKey(String str, String str2) {
        this.keys.push(str2);
        return ((MapItem) this.f100620d.peek()).get(new StringValue(str2)) != null;
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void startArray() {
        this.f100620d.push(new SimpleArrayItem(new ArrayList()));
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void startMap() {
        this.f100620d.push(new DictionaryMap());
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeBoolean(boolean z) {
        m63311e(BooleanValue.get(z));
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeNull() {
        m63311e(EmptySequence.getInstance());
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeNumeric(String str, AtomicValue atomicValue) {
        m63311e(atomicValue);
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeString(String str) throws XPathException {
        m63311e(new StringValue(reEscape(str)));
    }
}
