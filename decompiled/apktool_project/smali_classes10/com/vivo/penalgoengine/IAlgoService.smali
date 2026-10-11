.class public interface abstract Lcom/vivo/penalgoengine/IAlgoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/penalgoengine/IAlgoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract computeShapeData(Ljava/util/List;I)Lcom/vivo/penalgoengine/entity/ShapeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;I)",
            "Lcom/vivo/penalgoengine/entity/ShapeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
