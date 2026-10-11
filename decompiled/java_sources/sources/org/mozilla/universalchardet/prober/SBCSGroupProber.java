package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.sequence.HebrewModel;
import org.mozilla.universalchardet.prober.sequence.Ibm855Model;
import org.mozilla.universalchardet.prober.sequence.Ibm866Model;
import org.mozilla.universalchardet.prober.sequence.Koi8rModel;
import org.mozilla.universalchardet.prober.sequence.Latin5BulgarianModel;
import org.mozilla.universalchardet.prober.sequence.Latin5Model;
import org.mozilla.universalchardet.prober.sequence.Latin7Model;
import org.mozilla.universalchardet.prober.sequence.MacCyrillicModel;
import org.mozilla.universalchardet.prober.sequence.ThaiModel;
import org.mozilla.universalchardet.prober.sequence.Win1251BulgarianModel;
import org.mozilla.universalchardet.prober.sequence.Win1251Model;
import org.mozilla.universalchardet.prober.sequence.Win1253Model;

/* loaded from: classes13.dex */
public class SBCSGroupProber extends CharsetProber {

    /* renamed from: b */
    public CharsetProber.ProbingState f115560b;

    /* renamed from: c */
    public List<CharsetProber> f115561c;

    /* renamed from: d */
    public CharsetProber f115562d;

    /* renamed from: e */
    public int f115563e;

    public SBCSGroupProber() {
        ArrayList arrayList = new ArrayList();
        this.f115561c = arrayList;
        arrayList.add(new SingleByteCharsetProber(new Win1251Model()));
        this.f115561c.add(new SingleByteCharsetProber(new Koi8rModel()));
        this.f115561c.add(new SingleByteCharsetProber(new Latin5Model()));
        this.f115561c.add(new SingleByteCharsetProber(new MacCyrillicModel()));
        this.f115561c.add(new SingleByteCharsetProber(new Ibm866Model()));
        this.f115561c.add(new SingleByteCharsetProber(new Ibm855Model()));
        this.f115561c.add(new SingleByteCharsetProber(new Latin7Model()));
        this.f115561c.add(new SingleByteCharsetProber(new Win1253Model()));
        this.f115561c.add(new SingleByteCharsetProber(new Latin5BulgarianModel()));
        this.f115561c.add(new SingleByteCharsetProber(new Win1251BulgarianModel()));
        this.f115561c.add(new SingleByteCharsetProber(new ThaiModel()));
        HebrewModel hebrewModel = new HebrewModel();
        HebrewProber hebrewProber = new HebrewProber();
        SingleByteCharsetProber singleByteCharsetProber = new SingleByteCharsetProber(hebrewModel, false, hebrewProber);
        SingleByteCharsetProber singleByteCharsetProber2 = new SingleByteCharsetProber(hebrewModel, true, hebrewProber);
        hebrewProber.setModalProbers(singleByteCharsetProber, singleByteCharsetProber2);
        this.f115561c.add(hebrewProber);
        this.f115561c.add(singleByteCharsetProber);
        this.f115561c.add(singleByteCharsetProber2);
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        if (this.f115562d == null) {
            getConfidence();
            if (this.f115562d == null) {
                this.f115562d = this.f115561c.get(0);
            }
        }
        return this.f115562d.getCharSetName();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        CharsetProber.ProbingState probingState = this.f115560b;
        if (probingState == CharsetProber.ProbingState.FOUND_IT) {
            return 0.99f;
        }
        if (probingState == CharsetProber.ProbingState.NOT_ME) {
            return 0.01f;
        }
        float f = 0.0f;
        for (CharsetProber charsetProber : this.f115561c) {
            if (charsetProber.isActive()) {
                float confidence = charsetProber.getConfidence();
                if (f < confidence) {
                    this.f115562d = charsetProber;
                    f = confidence;
                }
            }
        }
        return f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115560b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        ByteBuffer filterWithoutEnglishLetters = filterWithoutEnglishLetters(bArr, i, i2);
        if (filterWithoutEnglishLetters.position() != 0) {
            Iterator<CharsetProber> it2 = this.f115561c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                CharsetProber next = it2.next();
                if (next.isActive()) {
                    CharsetProber.ProbingState handleData = next.handleData(filterWithoutEnglishLetters.array(), 0, filterWithoutEnglishLetters.position());
                    CharsetProber.ProbingState probingState = CharsetProber.ProbingState.FOUND_IT;
                    if (handleData == probingState) {
                        this.f115562d = next;
                        this.f115560b = probingState;
                        break;
                    }
                    CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.NOT_ME;
                    if (handleData == probingState2) {
                        next.setActive(false);
                        int i3 = this.f115563e - 1;
                        this.f115563e = i3;
                        if (i3 <= 0) {
                            this.f115560b = probingState2;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return this.f115560b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115563e = 0;
        for (CharsetProber charsetProber : this.f115561c) {
            charsetProber.reset();
            charsetProber.setActive(true);
            this.f115563e++;
        }
        this.f115562d = null;
        this.f115560b = CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
