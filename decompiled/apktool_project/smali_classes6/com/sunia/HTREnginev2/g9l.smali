.class public Lcom/sunia/HTREnginev2/g9l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final d:Lcom/google/firebase/encoders/proto/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/encoders/proto/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/g9l;->a:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/g9l;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/g9l;->a:Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(D)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 6
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/encoders/proto/a;->b(Lcom/google/firebase/encoders/FieldDescriptor;DZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public add(F)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/a;->c(Lcom/google/firebase/encoders/FieldDescriptor;FZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public add(I)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 8
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/a;->f(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/firebase/encoders/proto/a;

    return-object p0
.end method

.method public add(J)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 10
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/encoders/proto/a;->h(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/firebase/encoders/proto/a;

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/a;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 12
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/a;->j(Lcom/google/firebase/encoders/FieldDescriptor;ZZ)Lcom/google/firebase/encoders/proto/a;

    return-object p0
.end method

.method public add([B)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g9l;->a()V

    .line 14
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g9l;->d:Lcom/google/firebase/encoders/proto/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/a;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public b(Lcom/google/firebase/encoders/FieldDescriptor;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/g9l;->a:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g9l;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/g9l;->b:Z

    return-void
.end method
