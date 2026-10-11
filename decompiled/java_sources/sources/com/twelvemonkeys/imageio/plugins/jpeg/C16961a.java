package com.twelvemonkeys.imageio.plugins.jpeg;

import androidx.exifinterface.media.ExifInterface;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C13607d9;
import com.sunia.HTREnginev2.C13767gd;
import com.sunia.HTREnginev2.d4e;
import com.sunia.HTREnginev2.n0i;
import com.sunia.HTREnginev2.sdm;
import com.twelvemonkeys.imageio.AbstractMetadata;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.imageio.plugins.jpeg.Frame;
import com.twelvemonkeys.imageio.plugins.jpeg.Scan;
import java.util.Iterator;
import java.util.List;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.a */
/* loaded from: classes10.dex */
public class C16961a extends AbstractMetadata {

    /* renamed from: e */
    public final List<sdm> f94105e;

    public C16961a(List<sdm> list) {
        super(true, "javax_imageio_jpeg_image_1.0", null, null, null);
        this.f94105e = list;
    }

    @Override // com.twelvemonkeys.imageio.AbstractMetadata
    public Node getNativeTree() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("javax_imageio_jpeg_image_1.0");
        iIOMetadataNode.appendChild(new IIOMetadataNode("JPEGvariety"));
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("markerSequence");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        for (sdm sdmVar : this.f94105e) {
            int i = 0;
            switch (sdmVar.f84044a) {
                case JPEG.SOF3 /* 65475 */:
                    Frame frame = (Frame) sdmVar;
                    IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("sof");
                    iIOMetadataNode3.setAttribute("process", String.valueOf(frame.f84044a & 15));
                    iIOMetadataNode3.setAttribute("samplePrecision", String.valueOf(frame.f94070b));
                    iIOMetadataNode3.setAttribute("numLines", String.valueOf(frame.f94071c));
                    iIOMetadataNode3.setAttribute("samplesPerLine", String.valueOf(frame.f94072d));
                    iIOMetadataNode3.setAttribute("numFrameComponents", String.valueOf(frame.m60503b()));
                    Frame.Component[] componentArr = frame.f94073e;
                    int length = componentArr.length;
                    while (i < length) {
                        Frame.Component component = componentArr[i];
                        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("componentSpec");
                        iIOMetadataNode4.setAttribute("componentId", String.valueOf(component.f94074a));
                        iIOMetadataNode4.setAttribute("HsamplingFactor", String.valueOf(component.f94075b));
                        iIOMetadataNode4.setAttribute("VsamplingFactor", String.valueOf(component.f94076c));
                        iIOMetadataNode4.setAttribute("QtableSelector", String.valueOf(component.f94077d));
                        iIOMetadataNode3.appendChild(iIOMetadataNode4);
                        i++;
                    }
                    iIOMetadataNode2.appendChild(iIOMetadataNode3);
                    continue;
                case JPEG.DHT /* 65476 */:
                    n0i n0iVar = (n0i) sdmVar;
                    Node iIOMetadataNode5 = new IIOMetadataNode("dht");
                    for (int i2 = 0; i2 < 4; i2++) {
                        for (int i3 = 0; i3 < 2; i3++) {
                            if (n0iVar.f78186e[i2][i3] != 0) {
                                IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode("dhtable");
                                iIOMetadataNode6.setAttribute("class", String.valueOf(i3));
                                iIOMetadataNode6.setAttribute("htableId", String.valueOf(i2));
                                iIOMetadataNode5.appendChild(iIOMetadataNode6);
                            }
                        }
                    }
                    iIOMetadataNode2.appendChild(iIOMetadataNode5);
                    continue;
                case 65498:
                    Scan scan = (Scan) sdmVar;
                    IIOMetadataNode iIOMetadataNode7 = new IIOMetadataNode("sos");
                    iIOMetadataNode7.setAttribute("numScanComponents", String.valueOf(scan.f94101f.length));
                    iIOMetadataNode7.setAttribute("startSpectralSelection", String.valueOf(scan.f94097b));
                    iIOMetadataNode7.setAttribute("endSpectralSelection", String.valueOf(scan.f94098c));
                    iIOMetadataNode7.setAttribute("approxHigh", String.valueOf(scan.f94099d));
                    iIOMetadataNode7.setAttribute("approxLow", String.valueOf(scan.f94100e));
                    Scan.Component[] componentArr2 = scan.f94101f;
                    int length2 = componentArr2.length;
                    while (i < length2) {
                        Scan.Component component2 = componentArr2[i];
                        IIOMetadataNode iIOMetadataNode8 = new IIOMetadataNode("scanComponentSpec");
                        iIOMetadataNode8.setAttribute("componentSelector", String.valueOf(component2.f94102a));
                        iIOMetadataNode8.setAttribute("dcHuffTable", String.valueOf(component2.f94104c));
                        iIOMetadataNode8.setAttribute("acHuffTable", String.valueOf(component2.f94103b));
                        iIOMetadataNode7.appendChild(iIOMetadataNode8);
                        i++;
                    }
                    iIOMetadataNode2.appendChild(iIOMetadataNode7);
                    continue;
                case JPEG.DQT /* 65499 */:
                    iIOMetadataNode2.appendChild(new IIOMetadataNode("dqt"));
                    continue;
                case JPEG.APP14 /* 65518 */:
                    if (sdmVar instanceof C13607d9) {
                        C13607d9 c13607d9 = (C13607d9) sdmVar;
                        IIOMetadataNode iIOMetadataNode9 = new IIOMetadataNode("app14Adobe");
                        iIOMetadataNode9.setAttribute("version", String.valueOf(c13607d9.f67627d));
                        iIOMetadataNode9.setAttribute("flags0", String.valueOf(c13607d9.f67628e));
                        iIOMetadataNode9.setAttribute("flags1", String.valueOf(c13607d9.f67629f));
                        iIOMetadataNode9.setAttribute(Constants.ELEMNAME_TRANSFORM_STRING, String.valueOf(c13607d9.f67630g));
                        iIOMetadataNode2.appendChild(iIOMetadataNode9);
                        break;
                    } else {
                        break;
                    }
                case 65534:
                    IIOMetadataNode iIOMetadataNode10 = new IIOMetadataNode("com");
                    iIOMetadataNode10.setAttribute("comment", ((d4e) sdmVar).f67477b);
                    iIOMetadataNode2.appendChild(iIOMetadataNode10);
                    continue;
            }
            IIOMetadataNode iIOMetadataNode11 = new IIOMetadataNode("unknown");
            iIOMetadataNode11.setAttribute("MarkerTag", String.valueOf(sdmVar.f84044a & 255));
            iIOMetadataNode11.setUserObject(((C13767gd) sdmVar).f70918c);
            iIOMetadataNode2.appendChild(iIOMetadataNode11);
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        Iterator<sdm> it2 = this.f94105e.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            sdm next = it2.next();
            if (next instanceof Frame) {
                Frame frame = (Frame) next;
                IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ColorSpaceType");
                iIOMetadataNode2.setAttribute("name", frame.m60503b() == 1 ? "Gray" : ColorUtils.RGB_COLOR_START);
                iIOMetadataNode.appendChild(iIOMetadataNode2);
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("NumChannels");
                iIOMetadataNode3.setAttribute("value", String.valueOf(frame.m60503b()));
                iIOMetadataNode.appendChild(iIOMetadataNode3);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("CompressionTypeName");
        iIOMetadataNode2.setAttribute("value", "JPEG");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("Lossless");
        iIOMetadataNode3.setAttribute("value", "TRUE");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("NumProgressiveScans");
        iIOMetadataNode4.setAttribute("value", "1");
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ImageOrientation");
        iIOMetadataNode2.setAttribute("value", "normal");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTextNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Text");
        for (sdm sdmVar : this.f94105e) {
            if (sdmVar instanceof d4e) {
                IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TextEntry");
                iIOMetadataNode2.setAttribute("keyword", "comment");
                iIOMetadataNode2.setAttribute("value", ((d4e) sdmVar).f67477b);
                iIOMetadataNode.appendChild(iIOMetadataNode2);
            }
        }
        if (iIOMetadataNode.hasChildNodes()) {
            return iIOMetadataNode;
        }
        return null;
    }
}
