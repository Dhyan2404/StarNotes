package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Arrays;
import javax.xml.namespace.QName;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.util.RandomSingleton;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgClass;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSettings;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.SettingsDocument;

/* loaded from: classes13.dex */
public class XWPFSettings extends POIXMLDocumentPart {
    private CTSettings ctSettings;

    /* renamed from: org.apache.poi.xwpf.usermodel.XWPFSettings$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199911 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm;

        static {
            int[] iArr = new int[HashAlgorithm.values().length];
            $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm = iArr;
            try {
                iArr[HashAlgorithm.md2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.md4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.md5.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha256.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha384.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[HashAlgorithm.sha512.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public XWPFSettings(PackagePart packagePart) throws IOException {
        super(packagePart);
    }

    private void readFrom(InputStream inputStream) {
        try {
            this.ctSettings = SettingsDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getSettings();
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to read data from input-stream", e);
        }
    }

    private CTDocProtect safeGetDocumentProtection() {
        if (this.ctSettings.getDocumentProtection() == null) {
            this.ctSettings.setDocumentProtection(CTDocProtect.Factory.newInstance());
        }
        return this.ctSettings.getDocumentProtection();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        if (this.ctSettings == null) {
            throw new IllegalStateException("Unable to write out settings that were never read in!");
        }
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTSettings.type.getName().getNamespaceURI(), "settings"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.ctSettings.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public boolean getEvenAndOddHeadings() {
        return this.ctSettings.isSetEvenAndOddHeaders();
    }

    public boolean getMirrorMargins() {
        return this.ctSettings.isSetMirrorMargins();
    }

    public long getZoomPercent() {
        if ((!this.ctSettings.isSetZoom() ? this.ctSettings.addNewZoom() : this.ctSettings.getZoom()).getPercent() == null) {
            return 100L;
        }
        return POIXMLUnits.parsePercent(r2.xgetPercent()) / 1000;
    }

    public boolean isEnforcedWith() {
        CTDocProtect documentProtection = this.ctSettings.getDocumentProtection();
        return documentProtection != null && POIXMLUnits.parseOnOff(documentProtection.xgetEnforcement());
    }

    public boolean isTrackRevisions() {
        return this.ctSettings.isSetTrackRevisions();
    }

    public boolean isUpdateFields() {
        return this.ctSettings.isSetUpdateFields() && POIXMLUnits.parseOnOff(this.ctSettings.getUpdateFields().xgetVal());
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        super.onDocumentRead();
        InputStream inputStream = getPackagePart().getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void removeEnforcement() {
        safeGetDocumentProtection().setEnforcement(STOnOff1.OFF);
    }

    public void setEnforcementEditValue(STDocProtect.Enum r3) {
        safeGetDocumentProtection().setEnforcement(STOnOff1.f115762ON);
        safeGetDocumentProtection().setEdit(r3);
    }

    public void setEvenAndOddHeadings(boolean z) {
        CTOnOff newInstance = CTOnOff.Factory.newInstance();
        newInstance.setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
        this.ctSettings.setEvenAndOddHeaders(newInstance);
    }

    public void setMirrorMargins(boolean z) {
        CTOnOff newInstance = CTOnOff.Factory.newInstance();
        newInstance.setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
        this.ctSettings.setMirrorMargins(newInstance);
    }

    public void setTrackRevisions(boolean z) {
        if (z) {
            if (this.ctSettings.isSetTrackRevisions()) {
                return;
            }
            this.ctSettings.addNewTrackRevisions();
        } else if (this.ctSettings.isSetTrackRevisions()) {
            this.ctSettings.unsetTrackRevisions();
        }
    }

    public void setUpdateFields() {
        CTOnOff newInstance = CTOnOff.Factory.newInstance();
        newInstance.setVal(STOnOff1.f115762ON);
        this.ctSettings.setUpdateFields(newInstance);
    }

    public void setZoomPercent(long j) {
        if (!this.ctSettings.isSetZoom()) {
            this.ctSettings.addNewZoom();
        }
        this.ctSettings.getZoom().setPercent(BigInteger.valueOf(j));
    }

    public boolean validateProtectionPassword(String str) {
        HashAlgorithm hashAlgorithm;
        BigInteger cryptAlgorithmSid = safeGetDocumentProtection().getCryptAlgorithmSid();
        byte[] hash = safeGetDocumentProtection().getHash();
        byte[] salt = safeGetDocumentProtection().getSalt();
        BigInteger cryptSpinCount = safeGetDocumentProtection().getCryptSpinCount();
        if (cryptAlgorithmSid == null || hash == null || salt == null || cryptSpinCount == null) {
            return false;
        }
        int intValue = cryptAlgorithmSid.intValue();
        if (intValue == 1) {
            hashAlgorithm = HashAlgorithm.md2;
        } else if (intValue == 2) {
            hashAlgorithm = HashAlgorithm.md4;
        } else if (intValue == 3) {
            hashAlgorithm = HashAlgorithm.md5;
        } else if (intValue != 4) {
            switch (intValue) {
                case 12:
                    hashAlgorithm = HashAlgorithm.sha256;
                    break;
                case 13:
                    hashAlgorithm = HashAlgorithm.sha384;
                    break;
                case 14:
                    hashAlgorithm = HashAlgorithm.sha512;
                    break;
                default:
                    return false;
            }
        } else {
            hashAlgorithm = HashAlgorithm.sha1;
        }
        return Arrays.equals(hash, CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, salt, cryptSpinCount.intValue(), false));
    }

    public XWPFSettings() {
        this.ctSettings = CTSettings.Factory.newInstance();
    }

    public boolean isEnforcedWith(STDocProtect.Enum r2) {
        CTDocProtect documentProtection = this.ctSettings.getDocumentProtection();
        return documentProtection != null && POIXMLUnits.parseOnOff(documentProtection.xgetEnforcement()) && documentProtection.getEdit().equals(r2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0097. Please report as an issue. */
    public void setEnforcementEditValue(STDocProtect.Enum r5, String str, HashAlgorithm hashAlgorithm) {
        STCryptProv.Enum r52;
        int i;
        safeGetDocumentProtection().setEnforcement(STOnOff1.f115762ON);
        safeGetDocumentProtection().setEdit(r5);
        if (str == null) {
            if (safeGetDocumentProtection().isSetCryptProviderType()) {
                safeGetDocumentProtection().unsetCryptProviderType();
            }
            if (safeGetDocumentProtection().isSetCryptAlgorithmClass()) {
                safeGetDocumentProtection().unsetCryptAlgorithmClass();
            }
            if (safeGetDocumentProtection().isSetCryptAlgorithmType()) {
                safeGetDocumentProtection().unsetCryptAlgorithmType();
            }
            if (safeGetDocumentProtection().isSetCryptAlgorithmSid()) {
                safeGetDocumentProtection().unsetCryptAlgorithmSid();
            }
            if (safeGetDocumentProtection().isSetSalt()) {
                safeGetDocumentProtection().unsetSalt();
            }
            if (safeGetDocumentProtection().isSetCryptSpinCount()) {
                safeGetDocumentProtection().unsetCryptSpinCount();
            }
            if (safeGetDocumentProtection().isSetHash()) {
                safeGetDocumentProtection().unsetHash();
                return;
            }
            return;
        }
        if (hashAlgorithm == null) {
            hashAlgorithm = HashAlgorithm.sha1;
        }
        switch (C199911.$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm[hashAlgorithm.ordinal()]) {
            case 1:
                r52 = STCryptProv.RSA_FULL;
                i = 1;
                byte[] generateSeed = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed);
                safeGetDocumentProtection().setHash(hashPassword);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 2:
                r52 = STCryptProv.RSA_FULL;
                i = 2;
                byte[] generateSeed2 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword2 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed2, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed2);
                safeGetDocumentProtection().setHash(hashPassword2);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 3:
                r52 = STCryptProv.RSA_FULL;
                i = 3;
                byte[] generateSeed22 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword22 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed22, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed22);
                safeGetDocumentProtection().setHash(hashPassword22);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 4:
                r52 = STCryptProv.RSA_FULL;
                i = 4;
                byte[] generateSeed222 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword222 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed222, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed222);
                safeGetDocumentProtection().setHash(hashPassword222);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 5:
                r52 = STCryptProv.RSA_AES;
                i = 12;
                byte[] generateSeed2222 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword2222 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed2222, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed2222);
                safeGetDocumentProtection().setHash(hashPassword2222);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 6:
                r52 = STCryptProv.RSA_AES;
                i = 13;
                byte[] generateSeed22222 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword22222 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed22222, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed22222);
                safeGetDocumentProtection().setHash(hashPassword22222);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            case 7:
                r52 = STCryptProv.RSA_AES;
                i = 14;
                byte[] generateSeed222222 = RandomSingleton.getInstance().generateSeed(16);
                byte[] hashPassword222222 = CryptoFunctions.hashPassword(CryptoFunctions.xorHashPasswordReversed(str), hashAlgorithm, generateSeed222222, 100000, false);
                safeGetDocumentProtection().setSalt(generateSeed222222);
                safeGetDocumentProtection().setHash(hashPassword222222);
                safeGetDocumentProtection().setCryptSpinCount(BigInteger.valueOf(100000));
                safeGetDocumentProtection().setCryptAlgorithmType(STAlgType.TYPE_ANY);
                safeGetDocumentProtection().setCryptAlgorithmClass(STAlgClass.HASH);
                safeGetDocumentProtection().setCryptProviderType(r52);
                safeGetDocumentProtection().setCryptAlgorithmSid(BigInteger.valueOf(i));
                return;
            default:
                throw new EncryptedDocumentException("Hash algorithm '" + hashAlgorithm + "' is not supported for document write protection.");
        }
    }
}
