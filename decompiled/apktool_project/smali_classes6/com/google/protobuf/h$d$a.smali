.class public Lcom/google/protobuf/h$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public final b:I

.field public c:I

.field public d:Lcom/google/protobuf/h$d$b;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/h$d$a;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    iput p2, p0, Lcom/google/protobuf/h$d$a;->b:I

    iput p2, p0, Lcom/google/protobuf/h$d$a;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/h$d$a;->d:Lcom/google/protobuf/h$d$b;

    return-void
.end method
