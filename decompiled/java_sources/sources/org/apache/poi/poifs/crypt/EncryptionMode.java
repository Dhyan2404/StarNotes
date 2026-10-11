package org.apache.poi.poifs.crypt;

import java.util.function.Supplier;
import org.apache.poi.poifs.crypt.agile.AgileEncryptionInfoBuilder;
import org.apache.poi.poifs.crypt.binaryrc4.BinaryRC4EncryptionInfoBuilder;
import org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIEncryptionInfoBuilder;
import org.apache.poi.poifs.crypt.standard.StandardEncryptionInfoBuilder;
import org.apache.poi.poifs.crypt.xor.XOREncryptionInfoBuilder;

/* loaded from: classes12.dex */
public enum EncryptionMode {
    binaryRC4(new Supplier() { // from class: com.sunia.HTREnginev2.cqf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new BinaryRC4EncryptionInfoBuilder();
        }
    }, 1, 1, 0),
    cryptoAPI(new Supplier() { // from class: com.sunia.HTREnginev2.dqf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new CryptoAPIEncryptionInfoBuilder();
        }
    }, 4, 2, 4),
    standard(new Supplier() { // from class: com.sunia.HTREnginev2.eqf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new StandardEncryptionInfoBuilder();
        }
    }, 4, 2, 36),
    agile(new Supplier() { // from class: com.sunia.HTREnginev2.fqf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new AgileEncryptionInfoBuilder();
        }
    }, 4, 4, 64),
    xor(new Supplier() { // from class: com.sunia.HTREnginev2.gqf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new XOREncryptionInfoBuilder();
        }
    }, 0, 0, 0);

    public final Supplier<EncryptionInfoBuilder> builder;
    public final int encryptionFlags;
    public final int versionMajor;
    public final int versionMinor;

    EncryptionMode(Supplier supplier, int i, int i2, int i3) {
        this.builder = supplier;
        this.versionMajor = i;
        this.versionMinor = i2;
        this.encryptionFlags = i3;
    }
}
