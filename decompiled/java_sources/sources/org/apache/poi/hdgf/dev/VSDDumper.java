package org.apache.poi.hdgf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.PrintStream;
import java.util.Arrays;
import org.apache.poi.hdgf.HDGFDiagram;
import org.apache.poi.hdgf.chunks.Chunk;
import org.apache.poi.hdgf.pointers.Pointer;
import org.apache.poi.hdgf.streams.ChunkStream;
import org.apache.poi.hdgf.streams.PointerContainingStream;
import org.apache.poi.hdgf.streams.Stream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class VSDDumper {
    static final String tabs = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
    private final HDGFDiagram hdgf;

    /* renamed from: ps */
    private final PrintStream f111334ps;

    public VSDDumper(PrintStream printStream, HDGFDiagram hDGFDiagram) {
        this.f111334ps = printStream;
        this.hdgf = hDGFDiagram;
    }

    private void dumpChunk(Chunk chunk, int i) {
        dumpVal(chunk.getName(), "", i);
        dumpVal("Length is", chunk._getContents().length, i);
        dumpVal("OD Size is", chunk.getOnDiskSize(), i);
        dumpVal("T / S is", chunk.getTrailer() + " / " + chunk.getSeparator(), i);
        Chunk.Command[] commands = chunk.getCommands();
        dumpVal("Nbr of commands", (long) commands.length, i);
        for (Chunk.Command command : commands) {
            dumpVal(command.getDefinition().getName(), "" + command.getValue(), i + 1);
        }
    }

    private void dumpStream(Stream stream, int i) {
        Pointer pointer = stream.getPointer();
        dumpVal("Stream at", pointer.getOffset(), i);
        int i2 = i + 1;
        dumpVal("Type is", pointer.getType(), i2);
        dumpVal("Format is", pointer.getFormat(), i2);
        dumpVal("Length is", pointer.getLength(), i2);
        if (pointer.destinationCompressed()) {
            dumpVal("DC.Length is", stream._getContentsLength(), i2);
        }
        dumpVal("Compressed is", pointer.destinationCompressed(), i2);
        dumpVal("Stream is", stream.getClass().getName(), i2);
        byte[] _getContents = stream._getStore()._getContents();
        dumpVal("First few bytes are", _getContents.length >= 8 ? Arrays.toString(_getContents) : "[]", i2);
        if (stream instanceof PointerContainingStream) {
            Stream[] pointedToStreams = ((PointerContainingStream) stream).getPointedToStreams();
            dumpVal("Nbr of children", pointedToStreams.length, i2);
            for (Stream stream2 : pointedToStreams) {
                dumpStream(stream2, i2);
            }
        }
        if (stream instanceof ChunkStream) {
            Chunk[] chunks = ((ChunkStream) stream).getChunks();
            dumpVal("Nbr of chunks", chunks.length, i2);
            for (Chunk chunk : chunks) {
                dumpChunk(chunk, i2);
            }
        }
    }

    private void dumpVal(String str, long j, int i) {
        this.f111334ps.print(tabs.substring(0, i));
        this.f111334ps.print(str);
        this.f111334ps.print('\t');
        this.f111334ps.print(j);
        this.f111334ps.print(" (0x");
        this.f111334ps.print(Long.toHexString(j));
        this.f111334ps.println(MotionUtils.f31762d);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            System.err.println("Use:");
            System.err.println("  VSDDumper <filename>");
            System.exit(1);
        }
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(strArr[0]));
        try {
            HDGFDiagram hDGFDiagram = new HDGFDiagram(pOIFSFileSystem);
            try {
                PrintStream printStream = System.out;
                printStream.println("Opened " + strArr[0]);
                new VSDDumper(printStream, hDGFDiagram).dumpFile();
                hDGFDiagram.close();
                pOIFSFileSystem.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void dumpFile() {
        dumpVal("Claimed document size", this.hdgf.getDocumentSize(), 0);
        this.f111334ps.println();
        dumpStream(this.hdgf.getTrailerStream(), 0);
    }

    private void dumpVal(String str, boolean z, int i) {
        dumpVal(str, Boolean.toString(z), i);
    }

    private void dumpVal(String str, String str2, int i) {
        this.f111334ps.print(tabs.substring(0, i));
        this.f111334ps.print(str);
        this.f111334ps.print('\t');
        this.f111334ps.println(str2);
    }
}
