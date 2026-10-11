package org.apache.poi.poifs.crypt.agile;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionInfoBuilder;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes12.dex */
public class AgileEncryptionInfoBuilder implements EncryptionInfoBuilder {
    public static EncryptionDocument parseDescriptor(String str) {
        return parseDescriptor(new InputSource(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.poifs.crypt.EncryptionInfoBuilder
    public void initialize(EncryptionInfo encryptionInfo, LittleEndianInput littleEndianInput) throws IOException {
        EncryptionDocument parseDescriptor = parseDescriptor((InputStream) littleEndianInput);
        encryptionInfo.setHeader(new AgileEncryptionHeader(parseDescriptor));
        encryptionInfo.setVerifier(new AgileEncryptionVerifier(parseDescriptor));
        int versionMajor = encryptionInfo.getVersionMajor();
        EncryptionMode encryptionMode = EncryptionMode.agile;
        if (versionMajor == encryptionMode.versionMajor && encryptionInfo.getVersionMinor() == encryptionMode.versionMinor) {
            AgileDecryptor agileDecryptor = new AgileDecryptor();
            agileDecryptor.setEncryptionInfo(encryptionInfo);
            encryptionInfo.setDecryptor(agileDecryptor);
            AgileEncryptor agileEncryptor = new AgileEncryptor();
            agileEncryptor.setEncryptionInfo(encryptionInfo);
            encryptionInfo.setEncryptor(agileEncryptor);
        }
    }

    public static EncryptionDocument parseDescriptor(InputStream inputStream) {
        return parseDescriptor(new InputSource(inputStream));
    }

    private static EncryptionDocument parseDescriptor(InputSource inputSource) {
        try {
            Document parse = XMLHelper.newDocumentBuilder().parse(inputSource);
            EncryptionDocument encryptionDocument = new EncryptionDocument();
            encryptionDocument.parse(parse);
            return encryptionDocument;
        } catch (IOException | SAXException e) {
            throw new EncryptedDocumentException("Unable to parse encryption descriptor", e);
        }
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionInfoBuilder
    public void initialize(EncryptionInfo encryptionInfo, CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        if (cipherAlgorithm == null) {
            cipherAlgorithm = CipherAlgorithm.aes128;
        }
        if (cipherAlgorithm != CipherAlgorithm.rc4) {
            if (hashAlgorithm == null) {
                hashAlgorithm = HashAlgorithm.sha1;
            }
            if (chainingMode == null) {
                chainingMode = ChainingMode.cbc;
            }
            if (chainingMode != ChainingMode.cbc && chainingMode != ChainingMode.cfb) {
                throw new EncryptedDocumentException("Agile encryption only supports CBC/CFB chaining.");
            }
            if (i == -1) {
                i = cipherAlgorithm.defaultKeySize;
            }
            if (i2 == -1) {
                i2 = cipherAlgorithm.blockSize;
            }
            boolean z = false;
            for (int i3 : cipherAlgorithm.allowedKeySize) {
                z |= i3 == i;
            }
            if (z) {
                CipherAlgorithm cipherAlgorithm2 = cipherAlgorithm;
                HashAlgorithm hashAlgorithm2 = hashAlgorithm;
                int i4 = i;
                int i5 = i2;
                ChainingMode chainingMode2 = chainingMode;
                encryptionInfo.setHeader(new AgileEncryptionHeader(cipherAlgorithm2, hashAlgorithm2, i4, i5, chainingMode2));
                encryptionInfo.setVerifier(new AgileEncryptionVerifier(cipherAlgorithm2, hashAlgorithm2, i4, i5, chainingMode2));
                AgileDecryptor agileDecryptor = new AgileDecryptor();
                agileDecryptor.setEncryptionInfo(encryptionInfo);
                encryptionInfo.setDecryptor(agileDecryptor);
                AgileEncryptor agileEncryptor = new AgileEncryptor();
                agileEncryptor.setEncryptionInfo(encryptionInfo);
                encryptionInfo.setEncryptor(agileEncryptor);
                return;
            }
            throw new EncryptedDocumentException("KeySize " + i + " not allowed for Cipher " + cipherAlgorithm);
        }
        throw new EncryptedDocumentException("RC4 must not be used with agile encryption.");
    }
}
