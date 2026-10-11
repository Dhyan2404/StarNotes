.class public Lnet/sf/saxon/type/SchemaException;
.super Lnet/sf/saxon/trans/XPathException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
