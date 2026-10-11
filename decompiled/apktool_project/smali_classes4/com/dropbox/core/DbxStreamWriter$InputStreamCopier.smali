.class public final Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;
.super Lcom/dropbox/core/DbxStreamWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxStreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamCopier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxStreamWriter<",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/DbxStreamWriter;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public write(Lcom/dropbox/core/NoThrowOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;->a:Ljava/io/InputStream;

    invoke-static {p0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
