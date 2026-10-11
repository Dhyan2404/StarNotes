.class public interface abstract Lorg/apache/xerces/impl/xs/models/XSCMValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIRST_ERROR:S = -0x1s

.field public static final SUBSEQUENT_ERROR:S = -0x2s


# virtual methods
.method public abstract checkUniqueParticleAttribution(Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation
.end method

.method public abstract endContentModel([I)Z
.end method

.method public abstract getTermName(I)Ljava/lang/String;
.end method

.method public abstract isCompactedForUPA()Z
.end method

.method public abstract occurenceInfo([I)[I
.end method

.method public abstract oneTransition(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
.end method

.method public abstract startContentModel()[I
.end method

.method public abstract whatCanGoHere([I)Ljava/util/Vector;
.end method
