package sun.awt.image;

import java.awt.Image;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferInt;
import java.awt.image.DataBufferUShort;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import sun.java2d.StateTrackable;
import sun.java2d.StateTrackableDelegate;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class SunWritableRaster extends WritableRaster {
    private static DataStealer stealer;
    private StateTrackableDelegate theTrackable;

    /* loaded from: classes16.dex */
    public interface DataStealer {
        byte[] getData(DataBufferByte dataBufferByte, int i);

        int[] getData(DataBufferInt dataBufferInt, int i);

        short[] getData(DataBufferUShort dataBufferUShort, int i);

        StateTrackableDelegate getTrackable(DataBuffer dataBuffer);

        void setTrackable(DataBuffer dataBuffer, StateTrackableDelegate stateTrackableDelegate);
    }

    public SunWritableRaster(SampleModel sampleModel, Point point) {
        super(sampleModel, point);
        this.theTrackable = stealTrackable(this.dataBuffer);
    }

    public static void makeTrackable(DataBuffer dataBuffer) {
        stealer.setTrackable(dataBuffer, StateTrackableDelegate.createInstance(StateTrackable.State.STABLE));
    }

    public static void markDirty(DataBuffer dataBuffer) {
        stealer.getTrackable(dataBuffer).markDirty();
    }

    public static void setDataStealer(DataStealer dataStealer) {
        if (stealer != null) {
            throw new InternalError("Attempt to set DataStealer twice");
        }
        stealer = dataStealer;
    }

    public static void setTrackable(DataBuffer dataBuffer, StateTrackableDelegate stateTrackableDelegate) {
        stealer.setTrackable(dataBuffer, stateTrackableDelegate);
    }

    public static byte[] stealData(DataBufferByte dataBufferByte, int i) {
        return stealer.getData(dataBufferByte, i);
    }

    public static StateTrackableDelegate stealTrackable(DataBuffer dataBuffer) {
        return stealer.getTrackable(dataBuffer);
    }

    public static void markDirty(WritableRaster writableRaster) {
        if (writableRaster instanceof SunWritableRaster) {
            ((SunWritableRaster) writableRaster).markDirty();
        } else {
            markDirty(writableRaster.getDataBuffer());
        }
    }

    public static short[] stealData(DataBufferUShort dataBufferUShort, int i) {
        return stealer.getData(dataBufferUShort, i);
    }

    public SunWritableRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        super(sampleModel, dataBuffer, point);
        this.theTrackable = stealTrackable(dataBuffer);
    }

    public static int[] stealData(DataBufferInt dataBufferInt, int i) {
        return stealer.getData(dataBufferInt, i);
    }

    public SunWritableRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, WritableRaster writableRaster) {
        super(sampleModel, dataBuffer, rectangle, point, writableRaster);
        this.theTrackable = stealTrackable(dataBuffer);
    }

    public static void markDirty(Image image) {
        SurfaceData.getPrimarySurfaceData(image).markDirty();
    }

    public final void markDirty() {
        this.theTrackable.markDirty();
    }
}
