package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.io.DataInput;
import java.io.IOException;
import javax.imageio.IIOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class cml extends sdm {

    /* renamed from: b */
    public final int f66973b;

    public cml(int i) {
        super(JPEG.DRI);
        this.f66973b = i;
    }

    /* renamed from: b */
    public static cml m53477b(DataInput dataInput, int i) throws IOException {
        if (i == 4) {
            return new cml(dataInput.readUnsignedShort());
        }
        throw new IIOException("Unexpected length of DRI segment: " + i);
    }

    public String toString() {
        return "DRI[" + this.f66973b + IteratorUtils.f104924b;
    }
}
