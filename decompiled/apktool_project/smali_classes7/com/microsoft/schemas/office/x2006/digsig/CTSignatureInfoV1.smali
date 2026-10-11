.class public interface abstract Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsignatureinfov13a5ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getApplicationVersion()Ljava/lang/String;
.end method

.method public abstract getColorDepth()I
.end method

.method public abstract getDelegateSuggestedSigner()Ljava/lang/String;
.end method

.method public abstract getDelegateSuggestedSigner2()Ljava/lang/String;
.end method

.method public abstract getDelegateSuggestedSignerEmail()Ljava/lang/String;
.end method

.method public abstract getHorizontalResolution()I
.end method

.method public abstract getManifestHashAlgorithm()Ljava/lang/String;
.end method

.method public abstract getMonitors()I
.end method

.method public abstract getOfficeVersion()Ljava/lang/String;
.end method

.method public abstract getSetupID()Ljava/lang/String;
.end method

.method public abstract getSignatureComments()Ljava/lang/String;
.end method

.method public abstract getSignatureImage()[B
.end method

.method public abstract getSignatureProviderDetails()I
.end method

.method public abstract getSignatureProviderId()Ljava/lang/String;
.end method

.method public abstract getSignatureProviderUrl()Ljava/lang/String;
.end method

.method public abstract getSignatureText()Ljava/lang/String;
.end method

.method public abstract getSignatureType()I
.end method

.method public abstract getVerticalResolution()I
.end method

.method public abstract getWindowsVersion()Ljava/lang/String;
.end method

.method public abstract isSetDelegateSuggestedSigner()Z
.end method

.method public abstract isSetDelegateSuggestedSigner2()Z
.end method

.method public abstract isSetDelegateSuggestedSignerEmail()Z
.end method

.method public abstract isSetManifestHashAlgorithm()Z
.end method

.method public abstract setApplicationVersion(Ljava/lang/String;)V
.end method

.method public abstract setColorDepth(I)V
.end method

.method public abstract setDelegateSuggestedSigner(Ljava/lang/String;)V
.end method

.method public abstract setDelegateSuggestedSigner2(Ljava/lang/String;)V
.end method

.method public abstract setDelegateSuggestedSignerEmail(Ljava/lang/String;)V
.end method

.method public abstract setHorizontalResolution(I)V
.end method

.method public abstract setManifestHashAlgorithm(Ljava/lang/String;)V
.end method

.method public abstract setMonitors(I)V
.end method

.method public abstract setOfficeVersion(Ljava/lang/String;)V
.end method

.method public abstract setSetupID(Ljava/lang/String;)V
.end method

.method public abstract setSignatureComments(Ljava/lang/String;)V
.end method

.method public abstract setSignatureImage([B)V
.end method

.method public abstract setSignatureProviderDetails(I)V
.end method

.method public abstract setSignatureProviderId(Ljava/lang/String;)V
.end method

.method public abstract setSignatureProviderUrl(Ljava/lang/String;)V
.end method

.method public abstract setSignatureText(Ljava/lang/String;)V
.end method

.method public abstract setSignatureType(I)V
.end method

.method public abstract setVerticalResolution(I)V
.end method

.method public abstract setWindowsVersion(Ljava/lang/String;)V
.end method

.method public abstract unsetDelegateSuggestedSigner()V
.end method

.method public abstract unsetDelegateSuggestedSigner2()V
.end method

.method public abstract unsetDelegateSuggestedSignerEmail()V
.end method

.method public abstract unsetManifestHashAlgorithm()V
.end method

.method public abstract xgetApplicationVersion()Lcom/microsoft/schemas/office/x2006/digsig/STVersion;
.end method

.method public abstract xgetColorDepth()Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;
.end method

.method public abstract xgetDelegateSuggestedSigner()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDelegateSuggestedSigner2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDelegateSuggestedSignerEmail()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHorizontalResolution()Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;
.end method

.method public abstract xgetManifestHashAlgorithm()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetMonitors()Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;
.end method

.method public abstract xgetOfficeVersion()Lcom/microsoft/schemas/office/x2006/digsig/STVersion;
.end method

.method public abstract xgetSetupID()Lcom/microsoft/schemas/office/x2006/digsig/STUniqueIdentifierWithBraces;
.end method

.method public abstract xgetSignatureComments()Lcom/microsoft/schemas/office/x2006/digsig/STSignatureComments;
.end method

.method public abstract xgetSignatureImage()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSignatureProviderDetails()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetSignatureProviderId()Lcom/microsoft/schemas/office/x2006/digsig/STUniqueIdentifierWithBraces;
.end method

.method public abstract xgetSignatureProviderUrl()Lcom/microsoft/schemas/office/x2006/digsig/STSignatureProviderUrl;
.end method

.method public abstract xgetSignatureText()Lcom/microsoft/schemas/office/x2006/digsig/STSignatureText;
.end method

.method public abstract xgetSignatureType()Lcom/microsoft/schemas/office/x2006/digsig/STSignatureType;
.end method

.method public abstract xgetVerticalResolution()Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;
.end method

.method public abstract xgetWindowsVersion()Lcom/microsoft/schemas/office/x2006/digsig/STVersion;
.end method

.method public abstract xsetApplicationVersion(Lcom/microsoft/schemas/office/x2006/digsig/STVersion;)V
.end method

.method public abstract xsetColorDepth(Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;)V
.end method

.method public abstract xsetDelegateSuggestedSigner(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDelegateSuggestedSigner2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDelegateSuggestedSignerEmail(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHorizontalResolution(Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;)V
.end method

.method public abstract xsetManifestHashAlgorithm(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetMonitors(Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;)V
.end method

.method public abstract xsetOfficeVersion(Lcom/microsoft/schemas/office/x2006/digsig/STVersion;)V
.end method

.method public abstract xsetSetupID(Lcom/microsoft/schemas/office/x2006/digsig/STUniqueIdentifierWithBraces;)V
.end method

.method public abstract xsetSignatureComments(Lcom/microsoft/schemas/office/x2006/digsig/STSignatureComments;)V
.end method

.method public abstract xsetSignatureImage(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSignatureProviderDetails(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetSignatureProviderId(Lcom/microsoft/schemas/office/x2006/digsig/STUniqueIdentifierWithBraces;)V
.end method

.method public abstract xsetSignatureProviderUrl(Lcom/microsoft/schemas/office/x2006/digsig/STSignatureProviderUrl;)V
.end method

.method public abstract xsetSignatureText(Lcom/microsoft/schemas/office/x2006/digsig/STSignatureText;)V
.end method

.method public abstract xsetSignatureType(Lcom/microsoft/schemas/office/x2006/digsig/STSignatureType;)V
.end method

.method public abstract xsetVerticalResolution(Lcom/microsoft/schemas/office/x2006/digsig/STPositiveInteger;)V
.end method

.method public abstract xsetWindowsVersion(Lcom/microsoft/schemas/office/x2006/digsig/STVersion;)V
.end method
