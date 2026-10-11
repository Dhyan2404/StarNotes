.class public interface abstract Lnet/sf/saxon/s9api/Location;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;
.implements Lorg/xml/sax/Locator;


# virtual methods
.method public abstract getColumnNumber()I
.end method

.method public abstract getLineNumber()I
.end method

.method public abstract getPublicId()Ljava/lang/String;
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract saveLocation()Lnet/sf/saxon/s9api/Location;
.end method
