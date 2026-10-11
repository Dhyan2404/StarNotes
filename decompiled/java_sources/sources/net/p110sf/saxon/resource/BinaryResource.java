package net.p110sf.saxon.resource;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.BinaryResource;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Base64BinaryValue;

/* loaded from: classes11.dex */
public class BinaryResource implements Resource {
    public static final ResourceFactory FACTORY = new ResourceFactory() { // from class: com.sunia.HTREnginev2.uq
        @Override // net.p110sf.saxon.lib.ResourceFactory
        public final Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
            Resource m63615b;
            m63615b = BinaryResource.m63615b(xPathContext, inputDetails);
            return m63615b;
        }
    };

    /* renamed from: a */
    public final String f101271a;

    /* renamed from: b */
    public final String f101272b;

    /* renamed from: c */
    public byte[] f101273c;

    /* renamed from: d */
    public URLConnection f101274d = null;

    public BinaryResource(AbstractResourceCollection.InputDetails inputDetails) {
        this.f101272b = inputDetails.contentType;
        this.f101271a = inputDetails.resourceUri;
        this.f101273c = inputDetails.binaryContent;
    }

    /* renamed from: b */
    public static /* synthetic */ Resource m63615b(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        return new BinaryResource(inputDetails);
    }

    public static String decode(byte[] bArr, String str) throws XPathException {
        return decode(bArr, 0, bArr.length, str);
    }

    public static byte[] encode(String str, String str2) throws XPathException {
        ByteBuffer byteBuffer;
        try {
            CharsetEncoder newEncoder = Charset.forName(str2).newEncoder();
            newEncoder.onMalformedInput(CodingErrorAction.REPORT);
            try {
                byteBuffer = newEncoder.encode(CharBuffer.wrap(str));
            } catch (MalformedInputException e) {
                error("Malformed input in encoding:" + e);
                byteBuffer = null;
                byte[] bArr = new byte[byteBuffer.limit()];
                System.arraycopy(byteBuffer.array(), 0, bArr, 0, byteBuffer.limit());
                return bArr;
            } catch (UnmappableCharacterException e2) {
                error("Unmappable input in encoding:" + e2);
                byteBuffer = null;
                byte[] bArr2 = new byte[byteBuffer.limit()];
                System.arraycopy(byteBuffer.array(), 0, bArr2, 0, byteBuffer.limit());
                return bArr2;
            } catch (CharacterCodingException e3) {
                error("Character code problem in encoding:" + e3);
                byteBuffer = null;
                byte[] bArr22 = new byte[byteBuffer.limit()];
                System.arraycopy(byteBuffer.array(), 0, bArr22, 0, byteBuffer.limit());
                return bArr22;
            }
            byte[] bArr222 = new byte[byteBuffer.limit()];
            System.arraycopy(byteBuffer.array(), 0, bArr222, 0, byteBuffer.limit());
            return bArr222;
        } catch (Exception unused) {
            throw new XPathException("Unsupported encoding " + str2);
        }
    }

    public static void error(String str) throws XPathException {
        throw new XPathException(str);
    }

    public static byte[] readBinaryFromStream(InputStream inputStream, String str) throws XPathException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 16384);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (IOException e) {
                throw new XPathException("Failed to read: " + str + " " + e);
            }
        }
    }

    /* renamed from: c */
    public final byte[] m63616c(URLConnection uRLConnection) throws XPathException {
        long j;
        int read;
        this.f101274d = uRLConnection;
        try {
            InputStream inputStream = uRLConnection.getInputStream();
            long contentLengthLong = this.f101274d.getContentLengthLong();
            if (contentLengthLong > 2147483647L) {
                throw new XPathException("Cannot handle binary resources longer than 2G octets");
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            if (contentLengthLong < 0) {
                byte[] readBinaryFromStream = readBinaryFromStream(bufferedInputStream, this.f101274d.getURL().getPath());
                bufferedInputStream.close();
                return readBinaryFromStream;
            }
            int i = (int) contentLengthLong;
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (true) {
                j = i2;
                if (j >= contentLengthLong || (read = bufferedInputStream.read(bArr, i2, i - i2)) == -1) {
                    break;
                }
                i2 += read;
            }
            bufferedInputStream.close();
            if (j == contentLengthLong) {
                return bArr;
            }
            throw new XPathException("Only read " + i2 + " bytes; Expected " + contentLengthLong + " bytes");
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return this.f101272b;
    }

    public byte[] getData() {
        return this.f101273c;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101271a;
    }

    public void setData(byte[] bArr) {
        this.f101273c = bArr;
    }

    public static String decode(byte[] bArr, int i, int i2, String str) throws XPathException {
        try {
            CharsetDecoder newDecoder = Charset.forName(str).newDecoder();
            newDecoder.onMalformedInput(CodingErrorAction.REPORT);
            ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
            char[] cArr = new char[i2];
            CharBuffer wrap2 = CharBuffer.wrap(cArr);
            CoderResult decode = newDecoder.decode(wrap, wrap2, true);
            if (decode.isError()) {
                if (decode.isMalformed()) {
                    error("Malformed input found when decoding binary resource");
                }
                if (decode.isUnmappable()) {
                    error("Unmappable input found when decoding binary resource");
                }
                error("Other error when decoding binary resource");
            }
            char[] cArr2 = new char[wrap2.position()];
            System.arraycopy(cArr, 0, cArr2, 0, wrap2.position());
            return new String(cArr2);
        } catch (Exception unused) {
            throw new XPathException("Unsupported encoding " + str);
        }
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Base64BinaryValue getItem() throws XPathException {
        if (this.f101273c != null) {
            return new Base64BinaryValue(this.f101273c);
        }
        URLConnection uRLConnection = this.f101274d;
        if (uRLConnection != null) {
            this.f101273c = m63616c(uRLConnection);
            return new Base64BinaryValue(this.f101273c);
        }
        try {
            URLConnection urlConnection = ResourceLoader.urlConnection(new URI(this.f101271a).toURL());
            this.f101274d = urlConnection;
            this.f101273c = m63616c(urlConnection);
            return new Base64BinaryValue(this.f101273c);
        } catch (IOException | URISyntaxException e) {
            throw new XPathException(e);
        }
    }

    public BinaryResource(String str, String str2, byte[] bArr) {
        this.f101272b = str2;
        this.f101271a = str;
        this.f101273c = bArr;
    }
}
