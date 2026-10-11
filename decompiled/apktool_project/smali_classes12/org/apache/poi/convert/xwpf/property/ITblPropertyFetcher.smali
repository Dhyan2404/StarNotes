.class public interface abstract Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/BordersFetcher;


# virtual methods
.method public abstract getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getCellMargin(I)D
.end method

.method public abstract getCellMargin()[D
.end method

.method public abstract isSetTcBorders()Z
.end method

.method public abstract isSetTcMar()Z
.end method
