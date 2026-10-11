.class public Lorg/jsoup/safety/Cleaner$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/jsoup/nodes/Element;

.field public b:I


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$b;->a:Lorg/jsoup/nodes/Element;

    iput p2, p0, Lorg/jsoup/safety/Cleaner$b;->b:I

    return-void
.end method
