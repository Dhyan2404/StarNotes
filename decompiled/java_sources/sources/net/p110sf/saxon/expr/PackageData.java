package net.p110sf.saxon.expr;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.TypeAliasManager;

/* loaded from: classes11.dex */
public class PackageData {

    /* renamed from: a */
    public HostLanguage f99348a;

    /* renamed from: b */
    public boolean f99349b;
    protected Configuration config;

    /* renamed from: f */
    public SlotManager f99353f;

    /* renamed from: h */
    public String f99355h;
    protected int hostLanguageVersion;

    /* renamed from: i */
    public boolean f99356i;

    /* renamed from: j */
    public TypeAliasManager f99357j;

    /* renamed from: c */
    public DecimalFormatManager f99350c = null;
    protected KeyManager keyManager = null;

    /* renamed from: d */
    public AccumulatorRegistry f99351d = null;

    /* renamed from: e */
    public final List<GlobalVariable> f99352e = new ArrayList();

    /* renamed from: g */
    public int f99354g = -1;

    public PackageData(Configuration configuration) {
        configuration.getClass();
        this.config = configuration;
        this.f99355h = configuration.getEditionCode();
        this.f99353f = configuration.makeSlotManager();
    }

    public void addGlobalVariable(GlobalVariable globalVariable) {
        this.f99352e.add(globalVariable);
    }

    public AccumulatorRegistry getAccumulatorRegistry() {
        return this.f99351d;
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public DecimalFormatManager getDecimalFormatManager() {
        if (this.f99350c == null) {
            this.f99350c = new DecimalFormatManager(this.f99348a, 31);
        }
        return this.f99350c;
    }

    public SlotManager getGlobalSlotManager() {
        return this.f99353f;
    }

    public List<GlobalVariable> getGlobalVariableList() {
        return this.f99352e;
    }

    public HostLanguage getHostLanguage() {
        return this.f99348a;
    }

    public int getHostLanguageVersion() {
        return this.hostLanguageVersion;
    }

    public KeyManager getKeyManager() {
        if (this.keyManager == null) {
            this.keyManager = new KeyManager(getConfiguration(), this);
        }
        return this.keyManager;
    }

    public int getLocalLicenseId() {
        return this.f99354g;
    }

    public String getTargetEdition() {
        return this.f99355h;
    }

    public boolean isRelocatable() {
        return this.f99356i;
    }

    public boolean isSchemaAware() {
        return this.f99349b;
    }

    public boolean isXSLT() {
        return this.f99348a == HostLanguage.XSLT;
    }

    public TypeAliasManager obtainTypeAliasManager() {
        if (this.f99357j == null) {
            this.f99357j = this.config.makeTypeAliasManager();
        }
        return this.f99357j;
    }

    public void setAccumulatorRegistry(AccumulatorRegistry accumulatorRegistry) {
        this.f99351d = accumulatorRegistry;
    }

    public void setConfiguration(Configuration configuration) {
        this.config = configuration;
    }

    public void setDecimalFormatManager(DecimalFormatManager decimalFormatManager) {
        this.f99350c = decimalFormatManager;
    }

    public void setGlobalSlotManager(SlotManager slotManager) {
        this.f99353f = slotManager;
    }

    public void setHostLanguage(HostLanguage hostLanguage, int i) {
        this.f99348a = hostLanguage;
        this.hostLanguageVersion = i;
    }

    public void setKeyManager(KeyManager keyManager) {
        this.keyManager = keyManager;
    }

    public void setLocalLicenseId(int i) {
        this.f99354g = i;
    }

    public void setRelocatable(boolean z) {
        this.f99356i = z;
    }

    public void setSchemaAware(boolean z) {
        this.f99349b = z;
    }

    public void setTargetEdition(String str) {
        this.f99355h = str;
    }

    public void setTypeAliasManager(TypeAliasManager typeAliasManager) {
        this.f99357j = typeAliasManager;
    }

    public PackageData(PackageData packageData) {
    }
}
