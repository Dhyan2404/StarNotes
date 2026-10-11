package net.p110sf.saxon;

/* loaded from: classes11.dex */
public class BasicTransformerFactory extends TransformerFactoryImpl {
    public BasicTransformerFactory() {
        Configuration configuration = new Configuration();
        configuration.setProcessor(this);
        setConfiguration(configuration);
    }

    public BasicTransformerFactory(Configuration configuration) {
        super(configuration);
    }
}
