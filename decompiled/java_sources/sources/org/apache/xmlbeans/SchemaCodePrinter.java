package org.apache.xmlbeans;

import java.io.IOException;
import java.io.Writer;
import org.apache.xmlbeans.impl.repackage.Repackager;

/* loaded from: classes13.dex */
public interface SchemaCodePrinter {
    void printHolder(Writer writer, SchemaTypeSystem schemaTypeSystem, XmlOptions xmlOptions, Repackager repackager) throws IOException;

    @Deprecated
    default void printType(Writer writer, SchemaType schemaType) throws IOException {
        printType(writer, schemaType, null);
    }

    @Deprecated
    default void printTypeImpl(Writer writer, SchemaType schemaType) throws IOException {
        printTypeImpl(writer, schemaType, null);
    }

    default void printType(Writer writer, SchemaType schemaType, XmlOptions xmlOptions) throws IOException {
        printType(writer, schemaType);
    }

    default void printTypeImpl(Writer writer, SchemaType schemaType, XmlOptions xmlOptions) throws IOException {
        printTypeImpl(writer, schemaType);
    }
}
