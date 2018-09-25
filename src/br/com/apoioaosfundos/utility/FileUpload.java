package br.com.apoioaosfundos.utility;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload implements Serializable {

	private static final long serialVersionUID = 1L;
	private static String REAL_PATH = "";

	public static String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo,
			String url) {

		REAL_PATH = request.getServletContext().getRealPath(url);

		if (!new File(REAL_PATH).exists()) {
			new File(REAL_PATH).mkdirs();
		}

		try {
			arquivo.transferTo(new File(REAL_PATH + "/" + nomeArquivo));
			System.out.println("Arquivo salvo no local:\n" + REAL_PATH + "/" + nomeArquivo);
		} catch (IOException e) {
			// TODO: handle exception
		}

		return url + "/" + nomeArquivo;
	}

	public static void deletar(HttpServletRequest request, String path) {
		REAL_PATH = request.getServletContext().getRealPath(path);
		File file = new File(REAL_PATH);
		if (file.exists()) {
			file.delete();
			System.out.println("Arquivo excluído com sucesso: " + REAL_PATH);
		} else {
			System.out.println("Falha ao tentar excluir o arquivo: " + REAL_PATH);
			System.out.println("Arquivo inexistente!");
		}
	}

}
