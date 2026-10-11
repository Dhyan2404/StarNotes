.class public interface abstract Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIRST_ERROR:S = -0x1s

.field public static final SUBSEQUENT_ERROR:S = -0x2s


# virtual methods
.method public abstract checkUniqueParticleAttribution(Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;
        }
    .end annotation
.end method

.method public abstract endContentModel([I)Z
.end method

.method public abstract oneTransition(Lcom/sun/org/apache/xerces/internal/xni/QName;[ILcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
.end method

.method public abstract startContentModel()[I
.end method

.method public abstract whatCanGoHere([I)Ljava/util/Vector;
.end method
