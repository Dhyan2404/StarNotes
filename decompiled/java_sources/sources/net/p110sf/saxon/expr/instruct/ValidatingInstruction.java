package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public interface ValidatingInstruction {
    SchemaType getSchemaType();

    int getValidationAction();
}
