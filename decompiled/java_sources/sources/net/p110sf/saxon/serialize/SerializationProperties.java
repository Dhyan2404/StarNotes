package net.p110sf.saxon.serialize;

import java.util.Iterator;
import java.util.Properties;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceNormalizer;
import net.p110sf.saxon.event.SequenceNormalizerWithItemSeparator;
import net.p110sf.saxon.event.SequenceNormalizerWithSpaceSeparator;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.str.StringView;

/* loaded from: classes11.dex */
public class SerializationProperties {

    /* renamed from: a */
    public Properties f101591a;

    /* renamed from: b */
    public CharacterMapIndex f101592b;

    /* renamed from: c */
    public FilterFactory f101593c;

    public SerializationProperties() {
        this.f101591a = new Properties();
    }

    public SerializationProperties combineWith(SerializationProperties serializationProperties) {
        CharacterMapIndex characterMapIndex = this.f101592b;
        if (characterMapIndex == null || characterMapIndex.isEmpty()) {
            characterMapIndex = serializationProperties.getCharacterMapIndex();
        }
        FilterFactory filterFactory = this.f101593c;
        if (filterFactory == null) {
            filterFactory = serializationProperties.f101593c;
        }
        Properties properties = new Properties(serializationProperties.getProperties());
        for (String str : getProperties().stringPropertyNames()) {
            String property = getProperties().getProperty(str);
            if (str.equals("cdata-section-elements") || str.equals(SaxonOutputKeys.SUPPRESS_INDENTATION) || str.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                String property2 = serializationProperties.getProperty(str);
                if (property2 == null || property2.equals(property)) {
                    properties.setProperty(str, property);
                } else {
                    properties.setProperty(str, property2 + " " + property);
                    if (str.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                        characterMapIndex = characterMapIndex.copy();
                        Iterator<CharacterMap> it2 = serializationProperties.getCharacterMapIndex().iterator();
                        while (it2.hasNext()) {
                            CharacterMap next = it2.next();
                            characterMapIndex.putCharacterMap(next.getName(), next);
                        }
                    }
                }
            } else {
                properties.setProperty(str, property);
            }
        }
        SerializationProperties serializationProperties2 = new SerializationProperties(properties, characterMapIndex);
        serializationProperties2.setValidationFactory(filterFactory);
        return serializationProperties2;
    }

    public CharacterMapIndex getCharacterMapIndex() {
        return this.f101592b;
    }

    public Properties getProperties() {
        return this.f101591a;
    }

    public String getProperty(String str) {
        return getProperties().getProperty(str);
    }

    public FilterFactory getValidationFactory() {
        return this.f101593c;
    }

    public SequenceNormalizer makeSequenceNormalizer(Receiver receiver) {
        if (getValidationFactory() != null) {
            receiver = getValidationFactory().makeFilter(receiver);
        }
        String property = this.f101591a.getProperty(SaxonOutputKeys.ITEM_SEPARATOR);
        return (property == null || "#absent".equals(property)) ? new SequenceNormalizerWithSpaceSeparator(receiver) : new SequenceNormalizerWithItemSeparator(receiver, StringView.m63901of(property));
    }

    public void setProperty(String str, String str2) {
        this.f101591a.setProperty(str, str2);
    }

    public void setValidationFactory(FilterFactory filterFactory) {
        this.f101593c = filterFactory;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f101591a.stringPropertyNames()) {
            sb.append(str);
            sb.append("=");
            sb.append(this.f101591a.getProperty(str));
            sb.append(" ");
        }
        CharacterMapIndex characterMapIndex = this.f101592b;
        if (characterMapIndex != null) {
            Iterator<CharacterMap> it2 = characterMapIndex.iterator();
            while (it2.hasNext()) {
                CharacterMap next = it2.next();
                sb.append(next.getName().getEQName());
                sb.append("={");
                sb.append(next.toString());
                sb.append("} ");
            }
        }
        return sb.toString();
    }

    public SerializationProperties(Properties properties) {
        this.f101591a = properties;
    }

    public SerializationProperties(Properties properties, CharacterMapIndex characterMapIndex) {
        this.f101591a = properties;
        this.f101592b = characterMapIndex;
    }
}
