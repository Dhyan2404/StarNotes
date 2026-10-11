.class public abstract Lnet/sf/saxon/lib/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/lib/Logger$a;
    }
.end annotation


# static fields
.field public static final DISASTER:I = 0x3

.field public static final ERROR:I = 0x2

.field public static final INFO:I = 0x0

.field public static final WARNING:I = 0x1


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/lib/Logger;->a:Z

    return-void
.end method


# virtual methods
.method public asStreamResult()Ljavax/xml/transform/stream/StreamResult;
    .locals 1

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->asWriter()Ljava/io/Writer;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/Logger$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/lib/Logger$a;-><init>(Lnet/sf/saxon/lib/Logger;)V

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public disaster(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    return-void
.end method

.method public isUnicodeAware()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/Logger;->a:Z

    return p0
.end method

.method public abstract println(Ljava/lang/String;I)V
.end method

.method public setUnicodeAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/Logger;->a:Z

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    return-void
.end method
